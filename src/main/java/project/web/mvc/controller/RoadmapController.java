package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Roadmap;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.RoadmapService;

@Controller
@RequestMapping("/roadmap")
public class RoadmapController {
	@Autowired
	private OnLectureService OnLectureService;
	@Autowired
	private RoadmapService service;
	
	@RequestMapping("/list")
	public void roadmapList() {
		
	}
	
	@RequestMapping("/detail")
	public void roadmapDetail() {
		
	}
	@RequestMapping("/register")
	public void roadmapRegister() {
		
	}
	@RequestMapping("/insert")
	public String roadmapInsert(Roadmap roadmap) {
	
		List<OnLecture> onLectures = new ArrayList<OnLecture>();
		onLectures = OnLectureService.selectAll();
		
		for(OnLecture o : onLectures) {
			o.getOnLectureNo();
			System.out.println(o.getOnLectureNo()+"++++");
		
		}
		//onLectures = OnLectureService
		System.out.println(onLectures+"list*******");
		System.out.println(roadmap.getRoadmapName()+"!!!!");
		System.out.println(roadmap.getRoadmapContent()+"!!!!");
		
	
		
		service.insert(roadmap);
		return "redirect:list";
	}
}
