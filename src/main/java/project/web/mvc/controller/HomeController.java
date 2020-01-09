package project.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.UserdbService;

@Controller
@RequiredArgsConstructor
public class HomeController {

//	private LoginServiceImpl loginService;
	
	private final UserdbService userdbService;
	private final AuthorityService authorityService;
	
	@RequestMapping("/")
	public String index() {
		System.out.println("home controller index call.........");
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
		System.out.println("Home ********** result");
		return "redirect:/";
	}
	
	//회원가입페이지
	@RequestMapping("/signUpForm")
	public String dispSignUp() {
		System.out.println("홈컨트롤러의 sighupForm 호출중");
		return "signUpForm";
	}
	
//	회원가입 처리
	@RequestMapping("/signUp")
	@Transactional
	public String execSignUp(HttpServletRequest request) {
		System.out.println("HomeController call *** /signUp");
		String userdbEail = request.getParameter("userdbEmail");
		String userdbNickname = request.getParameter("userdbNickname");
		String userdbPassword = request.getParameter("userdbPassword");
		System.out.println(userdbEail+userdbNickname+userdbPassword+"나오니?");

		Userdb userdb = new Userdb();
		System.out.println("얍"+userdb.getAuthority()+"권한을보자");
		userdb.setUserdbEmail(userdbEail);
		userdb.setUserdbNickname(userdbNickname);
		userdb.setUserdbPassword(userdbPassword);
		//회원가입
		userdbService.insert(userdb);
		//회원가입 후 authority db 저장
		authorityService.insert(userdb);
		System.out.println("회원가입끝");
		
		return "redirect:/";
	}
//	회원가입 처리
//	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
//	@Transactional
//	public String execSignUp(String userdbEmail, String userdbNickname, String userdbPassword) {
//		System.out.println("HomeController call *** /signUp");
//
//		Userdb userdb = new Userdb();
//		userdb.setUserdbEmail(userdbEmail);
//		userdb.setUserdbNickname(userdbNickname);
//		userdb.setUserdbPassword(userdbPassword);
//		//회원가입
//		userdbService.insert(userdb);
//		//회원가입 후 authority db 저장
//		authorityService.insert(userdb);
//		System.out.println("회원가입끝");
//		
//		return "redirect:/";
//	}
	
	
	//접근거부페이지
	@RequestMapping("/denied")
	public String denied() {
		return "denied";
	}
	
	
}