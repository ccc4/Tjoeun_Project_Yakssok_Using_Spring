package com.yakssok.controller.member;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.yakssok.model.member.Member;
import com.yakssok.service.member.MemberService;

@RestController
@RequestMapping("/member")
@SessionAttributes("loginMember")
public class MemberRestController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value = "/checkId/{id}", method=RequestMethod.POST)
    public  int idCheck(Model model, @PathVariable String id) {
		int result = service.checkId(id);
        return result;
	}
	
    @RequestMapping(value = "/checkNick/{nickname}", method=RequestMethod.POST)
    public  int nickCheck(Model model, @PathVariable String nickname) {
		int result = service.checkNick(nickname);
        return result;   
    }
    
    @RequestMapping(value="/mLogin", method=RequestMethod.POST, 
			produces="application/text; charset=utf8")
	public String login(Model model, Member inputMember, HttpSession session) {
		System.out.println("컨트롤러 들어옴");
		System.out.println("SessionID : " + session.getId());
		
		Member member = service.select(inputMember);	
		String strJson = "";
		// 아이디 존재  x
		if(member == null) {
			System.out.println("로그인 실패");
		// 비밀번호 틀림
		}else if(!member.getPw().equals(inputMember.getPw())) {
			System.out.println("로그인 실패");
		// 로그인 성공
		}else {
			System.out.println("로그인 성공");
			System.out.println("문제점 : " + member.getJoinDate());
			model.addAttribute("loginMember",member);
//			Gson gson = new Gson();
//			gson.newBuilder().setDateFormat(DateFormat.FULL);

			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
			strJson = gson.toJson(member); 
		} 
		
		return strJson;
	}
	
	@RequestMapping(value="/mLogout", method=RequestMethod.GET)
	public String logout(Model model, SessionStatus status) {
		status.setComplete();
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("result", 1);
		
		System.out.println("로그아웃 과정 끝");
		
		Gson gson = new Gson();
		String strJson = gson.toJson(map);
		return strJson;
				
	}
        
//    @RequestMapping(value="/mId_check", method=RequestMethod.POST)
//    public int mJoin(String id) {
//    	return service.checkId(id);
//    }
//    
//    @RequestMapping(value="/mJoin", method=RequestMethod.POST)
//    public String mJoin(Member member) {
//    	
//    	return 
//    }
	
	 @RequestMapping(value="/mJoin", method=RequestMethod.POST )
	    public String mJoin(Member member) {			
				   
			
		   
		   if(member == null) {
			   System.out.println("회원가입 실패");			
		   }else {
			   service.join(member);
			   System.out.println("회원가입 성공" + member.getId());			   
		   }
		   
		    Gson gson = new Gson();
			String strJson = gson.toJson(member);

	    	return strJson;
 }
	   
		@RequestMapping(value = "/mCheckId", method=RequestMethod.POST)
	    public String mIdCheck(String id) {
			
			int count = service.checkId(id);
			
			HashMap<String, Object> map = new HashMap<>();
			
			System.out.println("아이디 check : " + id);
			
			if(count != 0) {
				System.out.println("아이디 있음");
			}else {
				System.out.println("아이디 없음");
			}
			
			Gson gson = new Gson();
			
			map.put("count", count);
			String strJson = gson.toJson(map);
			
			System.out.println(strJson);
						
	        return strJson;
		}
		
	    @RequestMapping(value = "/mCheckNick", method=RequestMethod.POST)
	    public  String mNickCheck(String nickname) {
			
	    	int count = service.checkNick(nickname);
			
			HashMap<String, Object> map = new HashMap<>();
			
			System.out.println("닉네임 check : " + nickname);
			
			if(count != 0) {
				System.out.println("닉네임 있음");
			}else {
				System.out.println("닉네임 없음");
			}
			
			Gson gson = new Gson();
			
			map.put("count", count);
			String strJson = gson.toJson(map);
			
			System.out.println(strJson);
						
	        return strJson;  
	    }
	    
	    @RequestMapping(value = "/mModifyPw", method=RequestMethod.POST,
	    		produces="application/text; charset=utf8")
	    public  String mModifyPw(Member member, String newPw) {
	    	
	    	Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
	    	String strJson = null;
	    	System.out.println("전달 받은 아이디 = " + member.getId() 
	    	                  + "\n전달 받은 기존비밀번호 = " + member.getPw()
	    	                  + "\n전달 받은 새비밀번호 = " + newPw);	    	
	    	
	    	Member dbmember = service.select(member);
	    	
	    	HashMap<String, Object> map = new HashMap<>();
	    	int count = 0;
			
			if(!member.getPw().equals(dbmember.getPw()) || member == null ) {
				System.out.println("비밀번호가 틀리거나 데이터 없음");				
			} else {
				dbmember.setPw(newPw);
				count = service.editPw(dbmember);
				System.out.println("비밀번호 변경");
			}
			    map.put("count", count);
				strJson = gson.toJson(map);
			System.out.println(strJson);					
	        return strJson;  
	    }
}
