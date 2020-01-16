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

import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Roadmap;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.RoadmapService;

@Controller
@RequestMapping("/admin/roadmap")
public class AdminRoadmapController {
	
	@Autowired
	private OnLectureService onLectureService;  	
	@Autowired
	private RoadmapService service;
	@RequestMapping("/register")
	public void  roadmapRegister() {
		
	}
	@RequestMapping("")
	public ModelAndView roadmapList() {
		List<Roadmap> list = service.selectAll();
		return new ModelAndView("admin/roadmap/list","roadmapList", list);
	}
	
	@RequestMapping("/onLectureList/{pageNum}")
	public String onLectureList(Model model, @PathVariable int pageNum) {
		List<OnLecture> list = new ArrayList<>();
		Page<OnLecture> page =onLectureService.selectAll(pageNum);
		page.iterator().forEachRemaining(list::add);
		model.addAttribute("onLectureList", list);
		model.addAttribute("page", page);
		return "admin/roadmap/onLectureList";
	}
	
	@RequestMapping("/insert/{onLectureNo}")
	public String roadmapInsert(@PathVariable Long onLectureNo, Roadmap roadmap) {
		roadmap.setOnLecture(onLectureService.selectOnLectureById(onLectureNo));
		service.insert(roadmap);
		return "";
	}
}
