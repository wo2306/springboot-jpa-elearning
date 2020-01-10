package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@RequestMapping("")
	public String main() {
		return "redirect:roadmap/list";
	}
	
	@RequestMapping("/list")
	public void roadmapList(Model model) {
		List<Roadmap> list = service.selectAll();
		for (Roadmap roadmap : list) {
			System.out.println(roadmap);
		}
		model.addAttribute("roadmapList", list);
	
	}
	 
	@RequestMapping("/onLectureList")
	public void onLectureList(Model model) {
		List<OnLecture> list =OnLectureService.selectAll();
		model.addAttribute("onLectureList", list);
	}

	@RequestMapping("/detail")
	public void roadmapDetail() {

	}

	@RequestMapping("/register")
	public void roadmapRegister() {

	}

	@RequestMapping("/insert/{onLectureNo}")
	public String roadmapInsert(@PathVariable Long onLectureNo, Roadmap roadmap) {
		
		roadmap.setOnLecture(OnLectureService.selectOnLectureById(onLectureNo));

		service.insert(roadmap);
		return "redirect:list";
	}
	
	@RequestMapping("/onLectureAdd")
	@ResponseBody
	public OnLecture onLectureAdd(Long onLectureNo) {
		System.out.println(onLectureNo);
		OnLecture onLecture = OnLectureService.selectOnLectureById(onLectureNo);
		System.out.println(OnLectureService.selectOnLectureById(onLectureNo));
		return onLecture;
	}


}
