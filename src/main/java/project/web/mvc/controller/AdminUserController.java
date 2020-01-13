package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AdminUserService;

@Controller
@RequestMapping("/admin/user")
public class AdminUserController {
	
	@Autowired
	private AdminUserService adminuserService;
	
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
//	@RequestMapping("/update")
//	public String userupdate(@ModelAttribute Userdb inuserdb) {
//		System.out.println("update하러 들어온 updatedb" + inuserdb.toString());
//		return "";
//	}
}
