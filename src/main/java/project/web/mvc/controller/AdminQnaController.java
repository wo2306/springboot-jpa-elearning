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
		List<ClassAnswer> list = new ArrayList<ClassAnswer>();
		Page<ClassAnswer> page = classQuestionService.selectAllAnswer(pageNum);
		page.iterator().forEachRemaining(list::add);

		model.addAttribute("list", list);
		model.addAttribute("page",page);
		return "admin/qna/answerList";
	}
	
	@RequestMapping("qna/questionUpdate/{classQuestionNo}")
	public String questionUpdateForm(@PathVariable Long classQuestionNo, Model model) {
		ClassQuestion classQuestion = classQuestionService.selectByQNo(classQuestionNo);
		
		model.addAttribute("classQuestion", classQuestion);
		
		return "admin/qna/updateQuestion";
	}
	
	
	@RequestMapping("qna/answerUpdate/{classAnswerNo}")
	public ModelAndView answerUpdateForm(@PathVariable Long classAnswerNo, Model model) {
		
		ClassAnswer classAnswer = classQuestionService.selectByAno(classAnswerNo);
		return new ModelAndView("admin/qna/updateAnswer" , "classAnswer", classAnswer);
	}
	
//	public ModelAndView update(@PathVariable Long offLectureNo) {
//	OffLecture offLecture = offLectureService.selectByOffNo(offLectureNo);
//	return new ModelAndView("admin/offLecture/adminOffLectureUpdate", "offLecture", offLecture);
//}
	
	@RequestMapping("qna/answerUpdate/update")
	public String answerUpdate (ClassAnswer classAnswer) {
		classQuestionService.updateAnswer(classAnswer);
		
		return "redirect:/admin/qna/answerList/1";
	}
	
	@RequestMapping("qna/questionUpdate/update")
	public String questionUpdate (ClassQuestion classQuestion) {
		
		classQuestionService.updateQuestion(classQuestion);
		return "redirect:/admin/qna/questionList/1";
	}

	


}
