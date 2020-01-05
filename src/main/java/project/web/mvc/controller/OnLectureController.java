package project.web.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.service.OnLectureServiceImpl;

@Controller
@RequestMapping("/onLecture")
public class OnLectureController {
	
	private OnLectureServiceImpl onLectureService;
	
	@RequestMapping("")
	public ModelAndView list(ModelAndView mv) {
		System.out.println("onLecture의 list 호출*********************");
		onLectureService.selectAll();
		return new ModelAndView("onLecture/list");
	}
	
	@RequestMapping("/detail/{onLectureNo}")
	public ModelAndView detail(@PathVariable int onLectureNo) {
		System.out.println("onlecture의 detail 호출*********************");
		System.out.println("onLectureNo: "+onLectureNo+"****************");
		return new ModelAndView("onLecture/detail", "onLectureNo", onLectureNo);
	}
	
	
}
