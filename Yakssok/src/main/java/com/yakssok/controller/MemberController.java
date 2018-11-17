package com.yakssok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.yakssok.model.Member;
import com.yakssok.model.DeleteMember;
import com.yakssok.service.MemberService;

@Controller
@RequestMapping("/member")
@SessionAttributes({"loginMember","islogin"})
public class MemberController {
	
	private static final String RESULT_CHECK = "check/member";
	
	@Autowired
	private MemberService service;
	
	//로그인 폼으로 이동
	@RequestMapping(value="/login", method=RequestMethod.GET)				// 이 부분
	public String login() {
		System.out.println("진입");
		return "/member/login";
	}
	
	//@RequestMapping(value = "/loginResult", method  = RequestMethod.POST)
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String logint(Model model, Member inputMember) {

		//db
		Member member = service.select(inputMember);	
		
		//로그인 실패
		if(member == null) {
			//session.setAttribute("loginResult", 0);
			//session.removeAttribute("islogin");
			//session.removeAttribute("loginMember");
			model.addAttribute("login", 0);
			model.addAttribute("islogin",false);
			model.addAttribute("loginMember");
			
		}else if(!member.getPw().equals(inputMember.getPw())) {
			model.addAttribute("login", 0);
			model.addAttribute("islogin",false);
			model.addAttribute("loginMember");
		//로그인 성공
			
		}else {
			//session.setAttribute("loginResult", 1); 
			//session.setAttribute("islogin", true);
			//session.setAttribute("loginMember", member);
			model.addAttribute("login", 1);
			model.addAttribute("islogin",true);
			model.addAttribute("loginMember",member);
		}
		return RESULT_CHECK;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(Model model, SessionStatus status) { // SessionStatus 사용
		//session.removeAttribute("islogin");
		//session.removeAttribute("loginMember");
		
		/*model.addAttribute("islogin",false);
		model.addAttribute("loginMember");*/
		
		status.setComplete();
		model.addAttribute("logout", "1");
		
		return RESULT_CHECK;
	}
	
	//id찾는 폼으로 이동
		@RequestMapping("/findid")
		public String findIdForm() {
			return "/member/findId";
		}

		//id찾기 결과 
		@RequestMapping(value="/findIdResult", method=RequestMethod.POST)
		public String findIdResult(Model model, Member findInputMember) {
			//입력 이름 ,이메일 멤버객체에 저장
		
			Member member = service.findId(findInputMember);
			
			//findResult = 0 fail
			if(member == null) {
				model.addAttribute("findResult",0);
			}else if (!member.getName().equals(findInputMember.getName()) || !member.getEmail().equals(findInputMember.getEmail())) {
				model.addAttribute("findResult",0);
			//성공
			}else {
				
				model.addAttribute("findResult",1);
				model.addAttribute("findMember",member);
				//session.setAttribute("findMember",member);
				System.out.println(member.getId());
			}
			return "/member/findIdResult";
		}
		
		//pw찾기폼이동
		@RequestMapping("/findpw")
		public String findPw() {
			return "/member/findPw";
		}

		
		//pw찾기 결과
		@RequestMapping(value ="findPwResult", method=RequestMethod.POST)
		public String findPwResult() {
			return "/member/findPwResult";
		}
		
		//pw수정폼이동
		@RequestMapping("/editPw")
		public String editPw() {
			return "/member/editPw";
		}
		
		@RequestMapping(value = "editPwResult", method=RequestMethod.POST)
		public String editPwResult(Model model, @RequestParam(name="id") String id,@RequestParam(name="pw") String pw,
												@RequestParam(name="newPw") String newPw) {
			
			//입력된 아이디,기존 비밀번호 멤버객체에 저장 db비교
			Member prevMember = new Member();
			prevMember.setId(id);
			prevMember.setPw(pw);
			
			Member member = service.select(prevMember);
			
			//입력받은 새 비밀번호 저장
			Member newMember = new Member();
			newMember.setPw(newPw);
			
			int result = 0;
			
			//입력된 아이디,비밀번호가 틀리거나 null이면 수정실패
			
			if( member == null || !member.getId().equals(prevMember.getId()) || !member.getPw().equals(prevMember.getPw())) {
				model.addAttribute("result",result);
			}else {
				//pw에 newpw 값을 넣어야함
				prevMember.setPw(newPw);
				result = service.editPw(prevMember);
				model.addAttribute("editPw",prevMember);
			}
			return "/member/editPwResult";
		}
		//마이페이지 이동
		@RequestMapping("/mypage")
		public String myPage() {
			return "/member/mypage";
		}
		
		@RequestMapping("/delete")
		public String delete() {
			return "/member/delete";
		}
		
		
		@RequestMapping(value="/deleteResult", method = RequestMethod.POST)
		public String deleteResult(Model model,Member inputMember) {

			//입력받은 값과 디비저장 값이 일치한지 확인 엥 ????
			Member member = service.select(inputMember);
			

			int result = 0;
			
			if(member == null) {
				model.addAttribute("result",result);
			}else if (!member.getId().equals(inputMember.getId()) || !member.getPw().equals(inputMember.getPw())) {
				model.addAttribute("result",result);
			}else {
				//성공시 result값에 0아닌 값 넣기 -> ok
				//성공시 member테이블에서 모든 정보 꺼내와서 
				//deletemember 테이블에 회원정보 INSERT 
				//delete진행	->ok
				
				DeleteMember deleteMember = new DeleteMember();
				
				deleteMember.setM_idx((member.getIdx()));
				deleteMember.setId(member.getId());
				deleteMember.setPw(member.getPw());
				deleteMember.setNickname(member.getNickname());
				deleteMember.setName(member.getName());
				deleteMember.setAge(member.getAge());
				deleteMember.setGender(member.getGender());
				deleteMember.setTel(member.getTel());
				deleteMember.setEmail(member.getEmail());
				deleteMember.setAddress(member.getAddress());
				deleteMember.setJoinDate(member.getJoinDate());
				deleteMember.setPoint(member.getPoint());
				
				
				service.insertdeleteMember(deleteMember);
				result = service.deleteMember(inputMember);
				model.addAttribute("islogin",false);
			}
	
			return "/member/deleteResult"; 
		}
		
		@RequestMapping("/editProfile")
		public String editProfile() {
			return "/member/editProfile";
		}
		
		
		
		@RequestMapping(value = "/editProfileResult", method=RequestMethod.POST)
		public String editProfileResult(Model model, Member newMember) {
			//loginMember
			//입력 받은 newMember 데이터 값이 null 이면 실패 아니면 성공
		
			//Member member = service.select(newMember);
			int result = 0;

			String nickname = newMember.getNickname().trim();
			//System.out.println(nickname);
			String name = newMember.getName().trim();
			//String age = String.valueOf(newMember.getAge());
			String age = Integer.toString(newMember.getAge());
			String tel = newMember.getTel().trim();
			String email = newMember.getEmail().trim();
			String address = newMember.getAddress().trim();  
			
			//정보업데이트 실패
			if(newMember == null ||  nickname == "" || name == "" || tel == ""|| email == ""|| address == "") {
				result = 0;
				model.addAttribute("editProfile", result);

			}else {
			//성공
			result =service.updateMember(newMember);
			model.addAttribute("editProfile", result);
			model.addAttribute("loginMember",newMember);
			}
			return "/member/editProfileResult";
		}
		
		

}
