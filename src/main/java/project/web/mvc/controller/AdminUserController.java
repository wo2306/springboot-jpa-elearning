package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AdminUserService;


@RequiredArgsConstructor
@Controller
@RequestMapping("/admin/user")
public class AdminUserController {
	
	private final AdminUserService adminuserService;
	
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
		adminuserService.deleteUserdb(userdbNo);
	}
	
	//검색하기
	@RequestMapping("/search")
	@ResponseBody
	public void serach(String key, String value) {
		System.out.println("검색하러 들어왔어요");
		System.out.println("key : " + key + "//////" + "value :" + value);
		adminuserService.selectByKey(key, value);
	}
}
