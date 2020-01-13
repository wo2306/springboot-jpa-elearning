package project.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.UserdbService;

@Controller
@RequestMapping("/admin")
public class AdminHomeController {
	
	@Autowired
	private UserdbService userdbService;
	
	@Autowired
	private AuthorityService authorityService;
	
	@RequestMapping("")
	public String main() {
		System.out.println("어드민컨트롤러호출");
		return "admin/adminIndex";
	}
	
	@RequestMapping("/a")
	public String a() {
		System.out.println("aaa");
		return "admin/academy/adminUpdate";
	}
	
	@RequestMapping("/login")
	public String adminLogin() {
		System.out.println("adminLogin***********");
		return "admin/login";
	}
	
	@RequestMapping("/signUpForm")
	public String signUpForm() {
		System.out.println("signUpForm***********");
		return "admin/signUpForm";
	}
	
	@RequestMapping("/signUp")
	public String adminSignUp(HttpServletRequest request) {
		System.out.println("admin/signUp***********");
		System.out.println("HomeController call *** /signUp");
		String userdbEail = request.getParameter("userdbEmail");
		String userdbNickname = request.getParameter("userdbNickname");
		String userdbPassword = request.getParameter("userdbPassword");
		System.out.println(userdbEail+userdbNickname+userdbPassword+"나오니?");

		Userdb userdb = new Userdb();
		userdb.setUserdbEmail(userdbEail);
		userdb.setUserdbNickname(userdbNickname);
		userdb.setUserdbPassword(userdbPassword);
		userdb.setAuthority(0L);
		System.out.println("얍"+userdb.getAuthority()+"권한을보자");
		//회원가입
		userdbService.insert(userdb);
		//회원가입 후 authority db 저장
		authorityService.insert(userdb);
		System.out.println("회원가입끝");
		
		return "redirect:/";
	}
	
	@RequestMapping("/b")
	public String b() {
		System.out.println("bbb");
		return "admin/academy/adminStudent";
	}
	
	@RequestMapping("/tables")
	public String c() {
		
		return"admin/tables";
	}
	
	
	

}
