package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		System.out.println("홈컨트롤러의 인덱스 호출*************************");
		
		return"index";
	}
	
	@RequestMapping("/login")
	public String login() {
		System.out.println("홈컨트롤러의 로그인 호출 ***************");
		return "login";
	}
	
	@RequestMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/denied")
	public String denied() {
		return "denied";
	}
	
	
}
