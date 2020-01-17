package project.web.mvc.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.ClassAnswer;
import project.web.mvc.domain.ClassQuestion;
import project.web.mvc.service.ClassQuestionService;

@Controller
@RequestMapping("/qna")
public class QnaController {

	@Autowired
	private ClassQuestionService classQuestionService;

	@RequestMapping("/list/{pageNum}")
	public String list(Model model, @PathVariable int pageNum) {

		List<ClassQuestion> list = new ArrayList<>();
		Page<ClassQuestion> page = classQuestionService.selectAll(pageNum);
		page.iterator().forEachRemaining(list::add);
		model.addAttribute("list",list);
		model.addAttribute("page", page);
		
		
		return "qna/list";
	}

	@RequestMapping("/read/{id}")
	public ModelAndView read(@PathVariable Long id, Model model) {
		ClassQuestion classQuestion = classQuestionService.selectByQNo(id);

		List<ClassAnswer> answerList = classQuestionService.selectAnswerByQNo(id);

		model.addAttribute("question", classQuestion);
		model.addAttribute("answers", answerList);
		
		return new ModelAndView("qna/read");
	}


	@RequestMapping("/questionForm")
	public void questionForm(Model model) {
		System.out.println("question form 호출");

	}

	@RequestMapping("/insert")
	public String insert(ClassQuestion question) {

		//classQuestionService.insert(question);

		return "redirect:/qna/list";
	}


	@RequestMapping("/answerInsert")
	public String answer(Model model) {
		System.out.println("answer 호출");


		return "aa";
	}

	@RequestMapping("/test")
	public void test(Model model) {
		System.out.println("list div형식 호출");

	}





}