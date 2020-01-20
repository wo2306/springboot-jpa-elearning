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
	
	//검색
    @RequestMapping("/{keyfield}/{keyword}/{pageNum}")
   public String category(@PathVariable String keyfield, @PathVariable String keyword,
                          @PathVariable int pageNum, Model model) {
    	System.out.println("제목검색 ctrl");
    	List<ClassQuestion> list = new ArrayList<>();
    	Page<ClassQuestion> page = null;
    	
        if (keyfield.equals("name")) {
        	System.out.println("==========작성자검색 확인");
        	page = classQuestionService.selectByName(keyword, pageNum);
       } else if (keyfield.equals("title")) {
    	   System.out.println("========제목검색 확인");
    	   page = classQuestionService.selectByTitle(keyword, pageNum);
       } 

       page.iterator().forEachRemaining(list::add);
       model.addAttribute("list", list);
       model.addAttribute("keyword", keyword);
       model.addAttribute("keyfield", keyfield);
       model.addAttribute("page", page);
       return "admin/qna/answerList";
   }
	
	@RequestMapping("qna/questionUpdate/{classQuestionNo}")
	public String questionUpdateForm(@PathVariable Long classQuestionNo, Model model) {
		ClassQuestion classQuestion = classQuestionService.selectByQNo(classQuestionNo);
		List<ClassAnswer> answerList = classQuestionService.findByQNo(classQuestionNo);
		
		model.addAttribute("classQuestion", classQuestion);
		model.addAttribute("answerList", answerList);
		
		return "admin/qna/updateQuestion";
	}
	
	@RequestMapping("qna/questionUpdate/update")
	public String questionUpdate (ClassQuestion classQuestion) {
		classQuestionService.updateQuestion(classQuestion);
		return "redirect:/admin/qna/questionList/1";
	}
	
	@RequestMapping("qna/questionDelete/{classQuestionNo}")
	public String questionDelete(@PathVariable Long classQuestionNo) {
		classQuestionService.deleteQuestion(classQuestionNo);
		
		return "redirect:/admin/qna/questionList/1";
	}
	
	@RequestMapping("qna/answerDelete/{classAnswerNo}/{classQuestionNo}")
	public String answerDelete(@PathVariable Long classAnswerNo, @PathVariable Long classQuestionNo) {
		classQuestionService.deleteAnswer(classAnswerNo);
		
		return "redirect:/admin/qna/questionUpdate/"+classQuestionNo;
	}
	
	
	
	
//	@RequestMapping("qna/answerUpdate/{classAnswerNo}")
//	public ModelAndView answerUpdateForm(@PathVariable Long classAnswerNo, Model model) {
//		
//		ClassAnswer classAnswer = classQuestionService.selectByAno(classAnswerNo);
//		return new ModelAndView("admin/qna/updateAnswer" , "classAnswer", classAnswer);
//	}
//	
	
//	@RequestMapping("qna/answerUpdate/update")
//	public String answerUpdate (ClassAnswer classAnswer) {
//		classQuestionService.updateAnswer(classAnswer);
//		
//		return "redirect:/admin/qna/answerList/1";
//	}
	


	


}
