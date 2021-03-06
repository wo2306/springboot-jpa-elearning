package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.Date;
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
import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.UserdbService;
import project.web.mvc.util.LoginCheck;


@RequiredArgsConstructor
@Controller
@RequestMapping("/admin/user")
public class AdminUserController {
	
	private final UserdbService userdbService;
	private final AuthorityService authorityService;
	
	//검색하기
	@RequestMapping("/{command}/{keyword}/{pageNum}")
	public String category(@PathVariable String command,@PathVariable String keyword,@PathVariable int pageNum, Model model) {
        List<Userdb> list = new ArrayList<>();
        Page<Userdb> page = null;
		if (command.equals("all")) {
            page = userdbService.selectByKeyword("", pageNum);
        } else if (command.equals("userdbNickname")) {
            page = userdbService.selectAllByUserdbNickname(keyword, pageNum);
        } else if (command.equals("userdbEmail")) {
            page = userdbService.selectAllByUserdbEmail(keyword, pageNum);
        }
        page.iterator().forEachRemaining(list::add);
        model.addAttribute("list", list);
        model.addAttribute("command", command);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        return "admin/user/adminUser";
	}
	
	//업데이트 폼 보여주기
	@RequestMapping("/updateForm/{userdbNo}")
	public ModelAndView userupdateForm(@PathVariable Long userdbNo) {

		System.out.println("수정할 학생은 : " + userdbNo);
		
		 Userdb item = userdbService.selectByUserdbNo(userdbNo);
		return new ModelAndView("admin/user/adminUserUpdate", "item", item);
	}
	
	//업데이트하기 
	@RequestMapping("/update")
	public String userupdate(Userdb inuserdb) {
		userdbService.updateUserdb(inuserdb);
		
		return "redirect:/admin/user/all/keyword/1";
	}
	
	//삭제하기
	@RequestMapping("/delete")
	public String userdbdelete(String userdbNo) {
		System.out.println("딜리트 여긴왓니?"+userdbNo);
		Long no = Long.parseLong(userdbNo);
		authorityService.deleteByUserdbNo(no);
		userdbService.delete(no);
		return "redirect:/admin/user/all/keyword/1";
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
