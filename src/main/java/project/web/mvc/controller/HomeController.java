package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.OffOrderRepository;
import project.web.mvc.repository.OnOrderRepository;
import project.web.mvc.service.OrderService;

@Controller
@RequiredArgsConstructor
public class HomeController {
//
////	private LoginServiceImpl loginService;
//	
//	private final UserdbService userdbService;
//	private final AuthorityService authorityService;
//	
	@RequestMapping("/")
	public String index() {
		System.out.println("인덱스 컨트롤러");
		return"index";
	}
	
//	//로그인페이지
//	@RequestMapping("/login")
//	public String dispLogin() {
//		System.out.println("HomeController call *** /login");
//		return "/login";
//	}
////	
////	@RequestMapping("/login")
////	public String 
//	
//	//로그인결과페이지
//	@RequestMapping("/login/result")
//	public String dispLoginResult() {
//		System.out.println("Home ********** result");
//		return "redirect:/";
//	}
//	
//	//회원가입페이지
//	@RequestMapping("/signUpForm")
//	public String dispSignUp() {
//		
//		return "signUpForm";
//	}
//	
////	회원가입 처리
//	@RequestMapping("/signUp")
//	@Transactional
//	public String execSignUp() throws Exception {
//		System.err.println("HomeController call *** /signUp");
//		Userdb userdb = new Userdb();
//		userdb.setUserdbEmail("test@gmail.com");
//		userdb.setUserdbNickname("초보자");
//		userdb.setUserdbPassword("1234");
//		userdb.setAuthority(1L);
//		//회원가입
//		userdbService.insert(userdb);
//		//회원가입 후 authority db 저장
//		authorityService.insert(userdb);
//		System.out.println("회원가입끝");
//		
//		return "redirect:/";
//	}
//	
//	//어드민페이지
//	@RequestMapping("/admin")
//	public String dispAdmin() {
//		return "admin";
//	}
//	
//	//접근거부페이지
//	@RequestMapping("/denied")
//	public String denied() {
//		return "denied";
//	}
//	
	
}
