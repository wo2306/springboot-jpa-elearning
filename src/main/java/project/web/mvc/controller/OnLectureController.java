package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.OnLectureService;

@Controller
@RequestMapping("/onLecture")
public class OnLectureController {
	
	@Autowired
	private OnLectureService onLectureService;
	
	@RequestMapping("")
	public ModelAndView list(ModelAndView mv) {
		System.out.println("onLecture의 list 호출*********************");
		List<OnLecture>list = onLectureService.selectAll();
		System.out.println("컨트롤러에서 받은값");
		for(OnLecture o: list) {
			System.out.println(o);
		}
		return new ModelAndView("onLecture/list");
	}
	
	@RequestMapping("/detail/{onLectureNo}")
	public ModelAndView detail(@PathVariable int onLectureNo) {
		System.out.println("onlecture의 detail 호출*********************");
		System.out.println("onLectureNo: "+onLectureNo+"****************");
		return new ModelAndView("onLecture/detail", "onLectureNo", onLectureNo);
	}
	
	@RequestMapping("/insert")
	public String insert() {
		
		OnLecture onLecture= new OnLecture();
		onLecture.setOnLectureContent("샘플내용");
		onLecture.setOnLectureName("샘플제목");
		onLecture.setOnLecturePrice(10000);
		onLecture.setOnLectureRegdate(null);
		onLecture.setOnLectureCategory("JPA");
		onLecture.setOnLectureSummary("써머리");
		onLecture.setOnLectureTeacher("장희정");
		onLectureService.insert(onLecture);
		return "redirect:";
	}
	
	@RequestMapping("/delete/{onLectureNo}")
	public String delete(@PathVariable int onLectureNo) {
		
		onLectureService.delete(onLectureNo);
		return "onLecture/list";
	}
	
//	@RequestMapping("/update/{onLecture}")
//	public String update(@PathVariable OnLecture onLecture) {
//		onLectureService.update(onLecture);
//		
//		return "redirect:";
//	}
	@RequestMapping("/update")
	public String update() {
		OnLecture onLecture = new OnLecture();
		onLecture.setOnLectureNo(502L);
		onLectureService.update(onLecture);
		
		return "redirect:";
	}
	
	
}
