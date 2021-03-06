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

import project.web.mvc.domain.OffLecture;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.OffLectureService;


@Controller
@RequestMapping("/offLecture")
public class OffLectureController {
	
	@Autowired
	private OffLectureService offLectureService;
	
	@RequestMapping("")
	public String main(Model model) { 
		System.out.println("너왓어어어어어?");
		List<OffLecture> list = offLectureService.selectAll();
		model.addAttribute("list", list);
		//System.out.println("왓니?");
		return "offLecture/list"; 
	}
	
	
	/**
	 * off lecture 등록
	 * */
	@RequestMapping("/offLecInsert")
	public String offLecInsert(OffLecture offLecture){
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
		return new ModelAndView("offLecture/detail", "offLecture", selectedOffLecture);
	}
	/**
	 * off lecture 삭제
	 * */
	
	@RequestMapping("/offLecDelete/{offLectureNo}")
	public String offLecDelete(@PathVariable Long offLectureNo) {
		offLectureService.offLecDelete(offLectureNo);
		return "redirect:list";
	}
	
	/**
	 * off lecture 전체검색
	 * */
	
	@RequestMapping("list/{pageNum}")
	public String list(Model model, @PathVariable int pageNum) {
		System.out.println("너왓어어어어어?");
		List<OffLecture> list = new ArrayList<>();
		Page<OffLecture> page = offLectureService.selectAll(pageNum);
		page.iterator().forEachRemaining(list::add);
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		return "offLecture/list";
	}
	/**
	 * off lecture 부분검색
	 * */
	
	@RequestMapping("/detail/{offLectureNo}")
	public ModelAndView offLecSelect(@PathVariable Long offLectureNo) {
		OffLecture offLecture = offLectureService.selectByOffNo(offLectureNo);
		//System.out.println(offLecture.getOffDetail());
		return new ModelAndView("offLecture/detail", "offLecture", offLecture);
	}
	
	@RequestMapping("checkout/{offLectureNo}")
	public ModelAndView offLecCheckout(@PathVariable Long offLectureNo) {
		OffLecture offLecture = offLectureService.selectByOffNo(offLectureNo);
		System.out.println(offLecture.getOffLectureName());
		return new ModelAndView("payment/offLecturecheckout", "offLecture", offLecture);
	}

}
