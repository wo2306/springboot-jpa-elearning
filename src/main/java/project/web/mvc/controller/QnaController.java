package project.web.mvc.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.ClassQuestion;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.ClassQuestionService;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@Autowired
	private ClassQuestionService classQuestionService;
	@RequestMapping("/list")
	public void test(Model model) {
		System.out.println("qna test ctrl");
		List<ClassQuestion> list = classQuestionService.selectAll();
		
	
		model.addAttribute("list",list);
		
	}
	
	@RequestMapping("/read/{id}")
	public ModelAndView read(@PathVariable Long id) {
		ClassQuestion classQuestion = classQuestionService.selectByQNo(id);
		
		return new ModelAndView("qna/read" ,"question", classQuestion);
	}
	
	
	@RequestMapping("/questionForm")
	public void questionForm(Model model) {
		System.out.println("question form 호출");
		
	}
	
	@RequestMapping("/insert")
	public String insert(ClassQuestion question) {
		
		classQuestionService.insert(question);
		
		return "redirect:list";
	}
	
	@RequestMapping("/list4")
	public void list4(Model model) {
		System.out.println("list div형식 호출");
		
	}

	@RequestMapping("/answer")
	public void answer(Model model) {
		System.out.println("answer 호출");
		
	}
}
