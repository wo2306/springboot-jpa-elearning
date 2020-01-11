package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AdminUserService;

@Controller
@RequestMapping("/admin/user")
@RequiredArgsConstructor
public class AdminUserController {
	
	@Autowired
	private AdminUserService adminuserService;
	
	@RequestMapping("")
	public ModelAndView main() {
		System.out.println("admin controller진입");
		 List<Userdb> list = adminuserService.selectAll();
		return new ModelAndView("admin/adminUser", "list", list);
	}
	
	//업데이트 폼 보여주기
	@RequestMapping("/update")
	public ModelAndView userupdateForm(Long id) {
		
		 Userdb item = adminuserService.selectByUserdbNo();
		 
		return new ModelAndView("admin/adminUpdate", "item", item);
	}
	
}
