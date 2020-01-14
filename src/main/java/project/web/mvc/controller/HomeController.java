package project.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.UserdbService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class HomeController {
//	private LoginServiceImpl loginService;
	private final UserdbService userdbService;
	private final OnLectureService onLectureService;
	private final AuthorityService authorityService;
	
	@RequestMapping("/")
	public String index(Model model) {
		List<OnLecture> lectureList = new ArrayList<>();
		onLectureService.selectAll(1).iterator().forEachRemaining(lectureList::add);
		System.out.println(lectureList);
		model.addAttribute("onLectureList", lectureList);
		return"index";
	}
	
	//로그인페이지
	@RequestMapping("/login")
	public String dispLogin() {
		System.out.println("HomeController call *** /login");
		return "/login";
	}
	
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
	@ResponseBody
	public int execSignUp(String userdbEmail, String userdbNickname, String userdbPassword) {
		System.out.println("HomeController call *** /signUp");
		System.out.println(userdbEmail+userdbNickname+userdbPassword+"나오니?");

		Userdb userdb = new Userdb();
		System.out.println("얍"+userdb.getAuthority()+"권한을보자");
		userdb.setUserdbEmail(userdbEmail);
		userdb.setUserdbNickname(userdbNickname);
		userdb.setUserdbPassword(userdbPassword);
		//회원가입
		userdbService.insert(userdb);
		//회원가입 후 authority db 저장
		authorityService.insert(userdb);
		System.out.println("회원가입끝");
		//1 : 성공 , 0: 실패
		int result = 1;
		return result;
	}
	
	@RequestMapping("/idCheck")
	@ResponseBody
	public int idCheck(String userdbEmail) {
		System.out.println(userdbEmail+"아이디체크");
		boolean idCheck = userdbService.duplicatedEmailCheck(userdbEmail);
		//true면 중복, false면 사용가능
		//0: 중복, 1:사용가능
		int result = (idCheck)? 0 : 1;
		return result;
	}
	
	
	@RequestMapping("/nicknameCheck")
	@ResponseBody
	public int nicknameCheck(String userdbNickname) {
		System.out.println(userdbNickname+"userdbNickname");
		boolean nicknameCheck = userdbService.duplicatedNicknameCheck(userdbNickname);
		//true면 중복, false면 사용가능
		//0: 중복, 1:사용가능
		int result = (nicknameCheck)? 0 : 1;
		return result;
	}
	
	
	//접근거부페이지
	@RequestMapping("/denied")
	public String denied() {
		return "denied";
	}
	
	
}