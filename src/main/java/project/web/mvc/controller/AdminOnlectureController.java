package project.web.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import project.web.mvc.service.OnLectureService;

@Controller
@RequestMapping("/admin/onLecture")
@RequiredArgsConstructor
public class AdminOnlectureController {

	private final OnLectureService onlectureService;
	
	@RequestMapping("")
	public String main(int pageNum){
		onlectureService.selectAll(pageNum);
		return "admin/onLecture/adminOnLecture";
	}
	
	
}
