package kr.co.project.member.controller;

import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.project.member.model.dto.MemberDTO;
import kr.co.project.member.model.service.MemberServiceImpl;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberServiceImpl memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@GetMapping("/redirect.do")
	public String redirectIndex() {
		return "member/login";
	}
	
	@PostMapping("/login.do")
	public String loginIndex(MemberDTO member,HttpSession session, Model model) {
		MemberDTO loginUser = memberService.loginMember(member);
		
		if(!Objects.isNull(loginUser) && bcryptPasswordEncoder.matches(member.getPwd(),loginUser.getPwd())) {
			
			session.setAttribute("mno", loginUser.getMno());
			session.setAttribute("memberName", loginUser.getName());
			session.setAttribute("memberNickName", loginUser.getNickname());
			session.setAttribute("memberName", loginUser.getName());
			
			model.addAttribute("m_no",loginUser.getMno());
			session.setAttribute("msg", "로그인 성공");
			session.setAttribute("status", "success");
			System.out.println(session.getAttribute("mno"));
			System.out.println("로그인 성공 완료");
			return "home";
		}else {
			
			model.addAttribute("msg","아이디 또는 비밀번호를 확인해주세요");
			model.addAttribute("status","error");
			System.out.println("로그인 실패");
			return "member/login";
		}	
	}
	
	@GetMapping("/registerForm.do")
	public String registerForm() {
		return "member/register";
	}

	@PostMapping("/checkEmail.do")
	@ResponseBody
	public String checkEmail(String email) {
		int result = memberService.checkEmail(email);
		
		if(result == 1) {
			return "duplication";
		}else {
			return "available";
		}
	}
	
	@PostMapping("/checkNickName.do")
	@ResponseBody 
	public String checkNickName(String nickname) {
		int result = memberService.checkNickName(nickname);
		
		if(result == 1) {
			return "duplication";
		}else {
			return "available";
		}
	}
	
	@PostMapping("/register.do")
	public String register(MemberDTO member) {
		System.out.println(member.getPwd());
		String password = bcryptPasswordEncoder.encode(member.getPwd());
		member.setPwd(password);
		
		int result = memberService.registerMember(member);
		
		if(result == 1) {
			System.out.println(member.getAge());
			System.out.println("회원가입 성공");
			return "member/login";			
		}else {
			System.out.println("회원가입 실패");
			return "common/error";
		}
		
	}
	
	
	
	
	
	
	
	
}
