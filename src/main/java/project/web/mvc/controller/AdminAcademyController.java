package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.Academy;
import project.web.mvc.domain.OffLecture;
import project.web.mvc.service.AcademyService;


@Controller
@RequestMapping("/admin/academy")
public class AdminAcademyController {
	
	@Autowired
	private AcademyService academyService;

	
	@RequestMapping("")
	public ModelAndView main() {
		List<Academy> list = academyService.selectAll();
		System.out.println(list);
		return new ModelAndView("admin/academy/adminAcademy", "list", list);
	}
	
	@RequestMapping("this")
	@ResponseBody
	public List<Academy> tablelist() {
		List<Academy> list = academyService.selectAll();
		System.out.println(list);
		return list;
	}
	
	@RequestMapping("/adminRegister")
	public String register() {
		//System.out.println("나와?");
		return "admin/academy/adminRegister";
	}
	
	@RequestMapping("/adminAcademyRegister/insert")
	public ModelAndView academyInsert(Academy academy) {
		academyService.academyInsert(academy);
		List<Academy> list = academyService.selectAll();
		System.out.println(list);
		return new ModelAndView("admin/academy/adminAcademy", "list", list);
	}

	@RequestMapping("adminUpdate/{academyNo}")
	public ModelAndView update(@PathVariable Long academyNo) {
		Academy academy = academyService.selectByAno(academyNo);
		return new ModelAndView("admin/academy/adminUpdate", "academy", academy);
	}
	
	@RequestMapping("/adminAcademyUpdate/update")
	public ModelAndView academyUpdate(Academy academy) {
		academyService.academyUpdate(academy);
		Academy selectedacademy = academyService.selectByAno(academy.getAcademyNo());
		return new ModelAndView("admin", "academy", selectedacademy);
	}
	
	@DeleteMapping(value = "/delete")
	@ResponseBody
	public void academyDelete(Long academyNo) {
		academyService.academyDelete(academyNo);
		//return "redirect:list";
	}
}
