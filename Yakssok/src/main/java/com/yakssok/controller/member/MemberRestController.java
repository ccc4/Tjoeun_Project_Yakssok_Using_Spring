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
	
	 @RequestMapping(value="/mJoin", method=RequestMethod.POST
			   )
	    public String mJoin(HttpSession session, Member member, 
	    		String id, String pw, String nickname, String name, String age, String gender, String tel, String email, String address ) {
		   
		   Gson gson = new Gson();
			String strJson = null;			
			
			member.setId(id);
			member.setPw(pw);
			member.setNickname(nickname);
			member.setName(name);
			member.setAge(Integer.parseInt(age));
			member.setAddress(address);
			member.setGender(Integer.parseInt(gender));
			member.setTel(tel);
			member.setEmail(email);
			member.setAddress(address);
				   
		   service.join(member);
		   
		   if(member == null) {
			   System.out.println("회원가입 실패");
		   }else {
			   System.out.println("회원가입 성공" + member.getId());
		   }
 
	    	return strJson;
  }
}
