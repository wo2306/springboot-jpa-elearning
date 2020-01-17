package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.domain.ClassAnswer;
import project.web.mvc.domain.ClassQuestion;
import project.web.mvc.service.ClassQuestionService;

@Controller
@RequestMapping("/admin")
public class AdminQnaController {
	@Autowired
	private ClassQuestionService classQuestionService;
	
	@RequestMapping("/qna/questionList/{pageNum}")
	public String selectAllQuestion(@PathVariable int pageNum, Model model) {
		List<ClassQuestion> list = new ArrayList<>();
		Page<ClassQuestion> page = classQuestionService.selectAll(pageNum);
		page.iterator().forEachRemaining(list::add);
		
		model.addAttribute("list", list);
		model.addAttribute("page",page);
		return "admin/qna/questionList";
	}
	
	@RequestMapping("/qna/answerList/{pageNum}")
	public String selectAllAnswer(@PathVariable int pageNum, Model model) {
		System.out.println("admin answerList ctrl");
		List<ClassAnswer> list = new ArrayList<ClassAnswer>();
		Page<ClassAnswer> page = classQuestionService.selectAllAnswer(pageNum);
		page.iterator().forEachRemaining(list::add);

		model.addAttribute("list", list);
		model.addAttribute("page",page);
		return "admin/qna/answerList";
	}

}
