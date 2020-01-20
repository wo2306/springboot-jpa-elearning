package project.web.mvc.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.ClassAnswer;
import project.web.mvc.domain.ClassQuestion;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.ClassQuestionService;
import project.web.mvc.util.LoginCheck;

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

	@RequestMapping("/questionInsert")
	public String insert(ClassQuestion question) {
		System.out.println("내용 = " +question.getClassQuestionContent());
		if(question.getClassQuestionContent()==null) {
			return "redirect:#";
		}
		else {
		if(LoginCheck.getUserdb()==null) {
			return "redirect:/login";
		}
		question.setUserdb(LoginCheck.getUserdb());
		classQuestionService.insert(question);

		
		return "redirect:/onLecture/detail/"+question.getOnLecture().getOnLectureNo();
		}
	}


	@RequestMapping("/answerInsert")
	public String answer(ClassAnswer classAnswer, Model model) {
		if(LoginCheck.getUserdb()==null)
		{
			return "redirect:/login";
		}
		//Long tempUserdbNo=LoginCheck.getUserdb().getUserdbNo();

		classAnswer.setUserdb(LoginCheck.getUserdb());
		classQuestionService.answerInsert(classAnswer);
		return "redirect:/qna/read/"+classAnswer.getClassQuestion().getClassQuestionNo();
	}

	 @RequestMapping("delete/{classQuestionNo}")
	    @ResponseBody
		public void questionDelete(@PathVariable Long classQuestionNo) {

			System.out.println("q delete ctrl(리뷰 넘버 : ) " +classQuestionNo);
			//classQuestionService.deleteQuestion(classQuestionNo);
			
			
		}





}