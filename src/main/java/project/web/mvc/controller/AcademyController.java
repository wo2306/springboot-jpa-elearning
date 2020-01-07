package project.web.mvc.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.Academy;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.service.AcademyService;

@Controller
@RequestMapping("/academy")
public class AcademyController {
	@Autowired
	private AcademyService academyService;

    /**
     * 교육원 전체 검색
     * 
     */
	
	@RequestMapping("/list")
	public void list(Model model) {
		List<Academy> list = academyService.selectAll();
		model.addAttribute("list", list);
		System.out.println(list);
	}
	
	/**
	 * 교육원 부분 검색
	 * */
	@RequestMapping("/academySelect")
	public Academy academySelect(Long academyNo){
		Academy academy = academyService.selectByAno(academyNo);
		return academy;
	}
	
	

    /**
     * 교육원 등록
     */
	@RequestMapping("/academyInsert")
	public String academyInsert(Academy academy) {
		academyService.academyInsert(academy);
		return "redirect:list";
	}


    /**
     * 교육원 수정
     */
	@RequestMapping("/academyUpdate")
	public ModelAndView academyUpdate(Academy academy) {
		academyService.academyUpdate(academy);
		Academy selectedacademy = academyService.selectByAno(academy.getAcademyNo());
		return new ModelAndView("academy/detail", "academy", selectedacademy);
	}

    /**
     * 교육원 삭제
     */
	@RequestMapping("/academyDelete/{academyNo}")
	public String academyDelete(@PathVariable Long academyNo) {
		academyService.academyDelete(academyNo);
		return "redirect:list";
	}
}
