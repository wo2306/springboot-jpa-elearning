package project.web.mvc.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.domain.ClassQuestion;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.ClassQuestionService;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@Autowired
	private ClassQuestionService classQuestionService;
	
	@RequestMapping("/list")
	public void list(Model model) {
		System.out.println("list 테이블 호출");
		
	}
	@RequestMapping("/list4")
	public void list4(Model model) {
		System.out.println("list div형식 호출");
		
	}
	@RequestMapping("question")
	public void question(Model model) {
		System.out.println("question 호출");
		
	}
	@RequestMapping("/answer")
	public void answer(Model model) {
		System.out.println("answer 호출");
		
	}
	
	@RequestMapping("/test")
	public void test(Model model) {
		System.out.println("qna test ctrl");
		List<ClassQuestion> list = classQuestionService.selectAll();
		
		System.out.println(list.toString());
		model.addAttribute("list",list);
		

		
	}
	
	
}
