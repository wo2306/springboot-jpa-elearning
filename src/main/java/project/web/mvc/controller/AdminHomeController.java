package project.web.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.UserdbService;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminHomeController {
	
	private final UserdbService userdbService;
	private final AuthorityService authorityService;
	
	
   @RequestMapping("")
   public String main() {
      System.out.println("어드민컨트롤러호출");
      return "admin/adminIndex";
   }
   
   
   @RequestMapping("/signUpForm")
   public String adminSignUpForm() {
	   return"admin/signUpForm";
   }
	
//	회원가입 처리
	@RequestMapping("/signUp")
	@Transactional
	@ResponseBody
	public int execSignUp(String userdbEmail, String userdbNickname, String userdbPassword) {

		Userdb userdb = new Userdb();
		System.out.println("얍"+userdb.getAuthority()+"권한을보자");
		userdb.setUserdbEmail(userdbEmail);
		userdb.setUserdbNickname(userdbNickname);
		userdb.setUserdbPassword(userdbPassword);
		//0L = admin, 1L = member
		userdb.setAuthority(0L);
		//회원가입
		userdbService.insert(userdb);
		//회원가입 후 authority db 저장
		authorityService.insert(userdb);
		System.out.println("회원가입끝");
		//1 : 성공 , 0: 실패
		int result = 1;
		return result;
	}
   

}