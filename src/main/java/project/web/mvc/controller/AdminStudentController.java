package project.web.mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AdminStudentService;

@Controller
@RequestMapping("/admin/student")
@RequiredArgsConstructor
public class AdminStudentController {

	private final AdminStudentService adminstudentService;
	@RequestMapping("")
	public ModelAndView main() {
		System.out.println("admin controller진입");
		 List<Userdb> list = adminstudentService.selectAll();
		return new ModelAndView("admin/adminStudent", "list", list);
	}
	
	//업데이트 폼 보여주기
	@RequestMapping("/adminUpdateForm")
	public ModelAndView studentupdateForm(Long id) {
		
		 Userdb item = adminstudentService.selectByUserdbNo();
		 
		return new ModelAndView("admin/adminUpdate", "item", item);
	}
	
}
