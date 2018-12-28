package com.yakssok.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

import com.yakssok.model.member.DeleteMember;
import com.yakssok.model.member.Member;
import com.yakssok.service.member.MemberService;

@Controller
@RequestMapping("/member")
@SessionAttributes("loginMember")
public class MemberController {
	
	private static final String RESULT_CHECK = "check/member";
	
	@Autowired
	private MemberService service;
	
	//로그인 폼으로 이동
	@RequestMapping(value="/login", method=RequestMethod.GET)				// 이 부분
	public String login() {
		return "/member/login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Model model, Member inputMember, 
			HttpServletRequest request, 
			HttpServletResponse response) {
		//db
		Member member = service.select(inputMember);	
		
		if(request.getParameter("saveId") == null) {
			Cookie cookie = new Cookie("saveId", null);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		//로그인 실패
		if(member == null) {
			model.addAttribute("login", 0);
			
		}else if(!member.getPw().equals(inputMember.getPw())) {
			model.addAttribute("login", 0);
		//로그인 성공
			
		}else {
			model.addAttribute("login", 1);
			model.addAttribute("loginMember",member);

			if(request.getParameter("saveId") != null) {
				Cookie cookie = new Cookie("saveId",inputMember.getId());
				response.addCookie(cookie);
			} 
		}
		return RESULT_CHECK;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(Model model, SessionStatus status) { // SessionStatus 사용
		
		status.setComplete();
		model.addAttribute("logout", 1);
		
		return RESULT_CHECK;
	}
	
	//id찾는 폼으로 이동
		@RequestMapping(value = "/findId", method =RequestMethod.GET)
		public String findId() {
			return "/member/findId";
		}

		//id찾기 결과 
		@RequestMapping(value="/findId", method=RequestMethod.POST)
		public String findId(Model model, Member findInputMember) {
			//입력 이름 ,이메일 멤버객체에 저장
		
			Member member = service.findId(findInputMember);
			int result =0;
			//findResult = 0 fail
			if(member == null) {
				model.addAttribute("findId",result);
				
			}else if (!member.getName().equals(findInputMember.getName()) || !member.getEmail().equals(findInputMember.getEmail())) {
				model.addAttribute("findId",result);
			//성공
			}else {
				
				model.addAttribute("findId",1);
				model.addAttribute("findIdResult",member);
				System.out.println(member.getId());
			}
			//return "member/findIdResult";
			return RESULT_CHECK;
		}
		
		//pw찾기폼이동
		@RequestMapping(value = "/findPw", method = RequestMethod.GET)
		public String findPw() {
			return "/member/findPw";
		}

		
		//pw찾기 결과
		@RequestMapping(value ="/findPw", method=RequestMethod.POST)
		public String findPw(Model model, Member inputMember) {
			
			//System.out.println("결과창");
			
			//디비값비교
			Member member = service.select(inputMember);
			
			int result = 0;
			
			//널값, 아이디의 값, 이메일의 값이 일치하지 않으면 실패(리절트 0)
			if(member == null) {
				model.addAttribute("findPw", result);
				
			}else if( !inputMember.getId().equals(member.getId()) || !inputMember.getEmail().equals(member.getEmail())) {
				model.addAttribute("findPw", result);
			}else {
				
				//메일발송
				//1.임시비밀번호 생성
				//2.임시 비밀번호를 디비 비밀번호로 넣기
				//3.사용자 이메일로 전송
				//4.사용자 로그인 후 패스워드 수정
				
				
				//1.
				String pw = "";
				
				for (int i = 0; i < 7; i++) {
					pw += (char) ((Math.random() * 26) + 97);
				}
			
				//2.
				System.out.println(pw);
				member.setPw(pw);
				service.editPw(member);
				
				System.out.println(inputMember.getEmail());
				
				
				
				//3.
				String charSet = "utf-8";
				String hostSMTP = "smtp.naver.com";
				String hostSMTPid = "vivid2004";
				String hostSMTPpwd = "systemmanager402";
				
				String fromEmail = "vivid2004@naver.com";
				String fromName = "약쏙";
				String subject = "약쏙에서 보낸 임시 비밀번호 입니다.";
				 
				String msg ="";
				msg += "<div align='center' style='border:3px solid skyblue'>";
				msg += "<strong><h3 style='color: black;'>";
				msg += "<u>"+inputMember.getId() + "</u> 님의 임시 비밀번호 입니다. 비밀번호를 변경하세요.</h3></strong>";
				msg += "<h4><p>임시 비밀번호 : ";
				msg += member.getPw() + "</p></h4></div>";	
				
				try {
				HtmlEmail mail = new HtmlEmail();
				mail.setDebug(true);
				mail.setCharset(charSet);
				mail.setSSLOnConnect(true);
				mail.setHostName(hostSMTP);
				//mail.setSmtpPort(587);
				mail.setSmtpPort(465);
				
				mail.setAuthentication(hostSMTPid, hostSMTPpwd);
				mail.setStartTLSEnabled(true);
				mail.addTo(inputMember.getEmail());
				mail.setFrom(fromEmail,fromName,charSet);
				mail.setSubject(subject);
				mail.setHtmlMsg(msg);
				mail.send();
				} catch (EmailException e) {
					e.printStackTrace();
				}
				result = 1;
				model.addAttribute("findPw", result);
			}
			
			return RESULT_CHECK;
		}
		
		//pw수정폼이동
		@RequestMapping(value = "/editPw", method = RequestMethod.GET)
		public String editPw() {
			return "/member/editPw";
		}
		
		@RequestMapping(value = "editPw", method=RequestMethod.POST)
		public String editPw(Model model, @RequestParam(name="id") String id,@RequestParam(name="pw") String pw,
												@RequestParam(name="newPw") String newPw) {
			
			//입력된 아이디,기존 비밀번호 멤버객체에 저장 db비교
			Member prevMember = new Member();
			prevMember.setId(id);
			prevMember.setPw(pw);
			
			Member member = service.select(prevMember);
			
			//입력받은 새 비밀번호 저장
//			Member newMember = new Member();
//			newMember.setPw(newPw);
			
			int result = 0;
			
			//입력된 아이디,비밀번호가 틀리거나 null이면 수정실패
			
			if( member == null || !member.getId().equals(prevMember.getId()) || !member.getPw().equals(prevMember.getPw())) {
				
				model.addAttribute("modify",result);
			}else {
				//pw에 newpw 값을 넣어야함
				prevMember.setPw(newPw);
				result = service.editPw(prevMember);
				//model.addAttribute("modify",prevMember);
				model.addAttribute("modify",result);
			}
			return RESULT_CHECK;
		}
		
		//마이페이지 이동
		@RequestMapping("/mypage")
		public String myPage() {
			return "/member/mypage";
		}
		
		@RequestMapping(value = "/delete", method = RequestMethod.GET)
		public String delete() {
			return "/member/delete";
		}
		
		
		@RequestMapping(value="/delete", method = RequestMethod.POST)
		public String delete(Model model,Member inputMember, SessionStatus status) {

			//입력받은 값과 디비저장 값이 일치한지 확인 엥 ????
			Member member = service.select(inputMember);
			

			int result = 0;
			
			if(member == null) {
				model.addAttribute("delete",result);
			}else if (!member.getId().equals(inputMember.getId()) || !member.getPw().equals(inputMember.getPw())) {
				model.addAttribute("delete",result);
			}else {
				//성공시 result값에 0아닌 값 넣기 -> ok
				//성공시 member테이블에서 모든 정보 꺼내와서 
				//deletemember 테이블에 회원정보 INSERT 
				//delete진행	->ok
				
				DeleteMember deleteMember = new DeleteMember();
				
				deleteMember.setM_idx((member.getM_idx()));
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
				model.addAttribute("delete",1);
				status.setComplete();
				
			}
	
			return RESULT_CHECK; 
		}
		
		@RequestMapping(value ="/editProfile", method = RequestMethod.GET)
		public String editProfilej(Model model, @ModelAttribute("loginMember") Member loginMember) {
			String address = loginMember.getAddress();
			System.out.println(address);
			String[] list = address.split(",");
			for(int i=0;i<list.length;i++) {
				System.out.println(list[i]);
				model.addAttribute("address" + i, list[i]);
			}
			
			
			
			return "/member/editProfile";
		}
		
		
		
		@RequestMapping(value = "/editProfile", method=RequestMethod.POST)
		public String editProfile(Model model, Member newMember) {
			
			int result = 0;

			String nickname = newMember.getNickname().trim();
			//System.out.println(nickname);
			String name = newMember.getName().trim();
			//String age = String.valueOf(newMember.getAge());
			String age = Integer.toString(newMember.getAge()).trim();
			String tel = newMember.getTel().trim();
			String email = newMember.getEmail().trim();
			String address = newMember.getAddress().trim();  
			
			//정보업데이트 실패
			if(newMember == null ||  nickname == "" || name == "" || tel == ""|| email == ""|| address == "") {
				result = 0;
				model.addAttribute("failmodify", result);

			}else {
			//성공
			result =service.updateMember(newMember);
			model.addAttribute("modify", result);
			model.addAttribute("loginMember",newMember);
			}
			return RESULT_CHECK;
		}
		
		//회원가입
		@RequestMapping(value = "/join", method = RequestMethod.GET)
		public String join() {
			return "member/join";
		}

		@RequestMapping(value = "/join", method = RequestMethod.POST)
		public String join(Model model, Member member) {
			//model.addAttribute("join", service.join(member));
			//return "member/JoinEndForm";
			
			int result = 0;
			//result = 0 이면 실패
			if(member == null) {
				model.addAttribute("join",result);
			}else {
				service.join(member);
				result = 1;
				model.addAttribute("join",result);
			}
			
			return RESULT_CHECK;
		}

	
}
