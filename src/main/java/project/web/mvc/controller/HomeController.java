package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.domain.Userdb;

@Controller
public class HomeController {

//	private LoginServiceImpl loginService;
	
	@RequestMapping("/")
	public String index() {
		return"index";
	}
	
	//로그인페이지
	@RequestMapping("/login")
	public String dispLogin() {
		System.out.println("로그인폼");
		return "/loginForm";
	}
	
	//로그인결과페이지
	@RequestMapping("/login/result")
	public String dispLoginResult() {
		return "/";
	}
	
	//회원가입페이지
	@RequestMapping("/signUpForm")
	public String dispSignUp() {
		return "signUpForm";
	}
	
	//회원가입 처리
	@RequestMapping("/signUp")
	public String execSignUp(Userdb userdb) {
//		loginService.joinUser(userdb);
		return "redirect:/login";
	}
	
	//어드민페이지
	@RequestMapping("/admin")
	public String dispAdmin() {
		return "admin";
	}
	
	//접근거부페이지
	@RequestMapping("/denied")
	public String denied() {
		return "denied";
	}
	
	
}
