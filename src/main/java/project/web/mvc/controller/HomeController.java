package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.OffOrderRepository;
import project.web.mvc.repository.OnOrderRepository;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.LoginService;
import project.web.mvc.service.OrderService;
import project.web.mvc.service.UserdbService;

@Controller
@RequiredArgsConstructor
public class HomeController {

//	private LoginServiceImpl loginService;
	
	private final UserdbService userdbService;
	private final AuthorityService authorityService;
	
	@RequestMapping("/")
	public String index() {
		return"index";
	}
	
	//로그인페이지
	@RequestMapping("/login")
	public String dispLogin() {
		System.out.println("HomeController call *** /login");
		return "/login";
	}
//	
//	@RequestMapping("/login")
//	public String 
	
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
	
//	회원가입 처리
	@RequestMapping("/signUp")
	@Transactional
	public String execSignUp() throws Exception {
		System.err.println("HomeController call *** /signUp");
		Userdb userdb = new Userdb();
		userdb.setUserdbEmail("jang@gmail.com");
		userdb.setUserdbNickname("코딩박사");
		userdb.setUserdbPassword("1234");
		userdb.setAuthority(1L);
		//회원가입
		userdbService.insert(userdb);
		//회원가입 후 authority db 저장
		authorityService.insert(userdb);
		System.out.println("회원가입끝");
		
		return "redirect:/";
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
