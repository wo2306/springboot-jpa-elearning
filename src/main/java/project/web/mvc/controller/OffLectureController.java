package project.web.mvc.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.OffLecture;
import project.web.mvc.service.OffLectureService;


@Controller
public class OffLectureController {
	@Autowired
	private OffLectureService offLectureService;
	/**
	 * off lecture 등록
	 * */
	@RequestMapping("/offLecInsert")
	public String offLecInsert(OffLecture offLecture) {
		offLectureService.offLecInsert(offLecture);
		return "redirect:list";
	}
	
	/**
	 * off lecture 수정
	
	 * */
	
	@RequestMapping("/offLecUpdate")
	public ModelAndView offLecUpdate(OffLecture offLecture) {
		offLectureService.offLecUpdate(offLecture);
		OffLecture selectedOffLecture = offLectureService.selectByOffNo(offLecture.getOffLectureNo());
		return new ModelAndView("offLec/detail", "offLecture", selectedOffLecture);
	}
	/**
	 * off lecture 삭제
	 * */
	
	@RequestMapping("/offLecDelete/{offLectureNo}")
	public String offLecDelete(@PathVariable int offLectureNo) {
		offLectureService.offLecDelete(offLectureNo);
		return "redirect:list";
	}
	
	/**
	 * off lecture 전체검색
	 * */
	
	@RequestMapping("/list")
	public void list(Model model) {
		List<OffLecture> list = offLectureService.selectAll();
		model.addAttribute("list", list);
	}
	/**
	 * off lecture 부분검색
	 * */
	
	@RequestMapping("offLecSelect")
	public OffLecture offLecSelect(Long offLectureNo) {
		OffLecture offLecture = offLectureService.selectByOffNo(offLectureNo);
		return offLecture;
	}
	
}
