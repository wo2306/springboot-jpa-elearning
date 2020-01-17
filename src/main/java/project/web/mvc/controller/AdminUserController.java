package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AdminUserService;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.UserdbService;


@RequiredArgsConstructor
@Controller
@RequestMapping("/admin/user")
public class AdminUserController {
	
	private final AdminUserService adminuserService;
	private final UserdbService userdbService;
	private final AuthorityService authorityService;
	
	
	@RequestMapping("")
	public ModelAndView main() {
		System.out.println("admin controller진입");
		 List<Userdb> list = adminuserService.selectAll();
		return new ModelAndView("admin/user/adminUser", "list", list);
	}
	
	//업데이트 폼 보여주기
	@RequestMapping("/updateForm/{userdbNo}")
	public ModelAndView userupdateForm(@PathVariable Long userdbNo) {

		System.out.println("수정할 학생은 : " + userdbNo);
		 Userdb item = adminuserService.selectByUserdbNo(userdbNo);
		 
		return new ModelAndView("admin/user/adminUserUpdate", "item", item);
	}
	
	//업데이트하기 
	@RequestMapping("/update")
	public String userupdate(Userdb inuserdb) {
		adminuserService.updateUserdb(inuserdb);
		
		return "redirect:/admin/user";
	}
	
	//삭제하기
	@RequestMapping("/delete")
	@ResponseBody
	public void userdbdelete(Long userdbNo) {
		authorityService.deleteByUserdbNo(userdbNo);
		adminuserService.deleteUserdb(userdbNo);
	}
	
	//검색하기
	@RequestMapping("/search/{command}/{keyword}/{pageNum}")
	public String category(@PathVariable String command,@PathVariable String keyword,@PathVariable int pageNum, Model model) {
		System.out.println("들어왔다 오바");
		System.out.println(command);
		System.out.println(keyword);
		List<Userdb> list = new ArrayList<>();
		Page<Userdb> page = null;
		if(command.equals("all")) { //전체일때
			page = adminuserService.selectByKeyword("", pageNum);
		}
		return "admin/user";
	}
	
	
//	회원가입 처리
	@RequestMapping("/signUp")
	@Transactional
	@ResponseBody
	public int execSignUp(String userdbEmail, String userdbNickname, String userdbPassword) {

		Userdb userdb = new Userdb();
		userdb.setUserdbEmail(userdbEmail);
		userdb.setUserdbNickname(userdbNickname);
		userdb.setUserdbPassword(userdbPassword);
		//0L = admin
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
	
	   //signupForm으로 가기
	   @RequestMapping("/signUpForm")
	   public String adminSignUpForm() {
		   return"admin/user/signUpForm";
	   }

   
}
