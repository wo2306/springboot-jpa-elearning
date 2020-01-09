package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.Academy;
import project.web.mvc.service.AcademyService;


@Controller
@RequestMapping("/admin")
public class AdminAcademyController {
	
	@Autowired
	private AcademyService academyService;

	
	@RequestMapping("")
	public ModelAndView main() {
		List<Academy> list = academyService.selectAll();
		System.out.println(list);
		return new ModelAndView("admin/adminAcademy", "list", list);
	}
	
	@RequestMapping("adminRegister")
	public void register() {
		
	}
	
	@RequestMapping("adminRegister/insert")
	public String academyInsert(Academy academy) {
		academyService.academyInsert(academy);
		return "redirect:/admin";
	}
	
	//@RequestMapping("adminUpdate")
	@RequestMapping("/adminUpdate")
	public ModelAndView academyUpdate(Academy academy) {
		academyService.academyUpdate(academy);
		Academy selectedacademy = academyService.selectByAno(academy.getAcademyNo());
		return new ModelAndView("academy/detail", "academy", selectedacademy);
	}
}
