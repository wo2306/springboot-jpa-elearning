package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	private OnLectureService onLectureService;
	@Autowired
	private RoadmapService service;

	@RequestMapping("")
	public String main() {
		return "redirect:roadmap/list";
	}
	@RequestMapping("/register")
	public void  roadmapRegister() {
		
	}
	
	@RequestMapping("/list")
	public void roadmapList(Model model) {
		List<Roadmap> list = service.selectAll();
		for (Roadmap roadmap : list) {
			System.out.println(roadmap);
		}
		model.addAttribute("roadmapList", list);
	
	}
	 
	@RequestMapping("/onLectureList/{pageNum}")
	public String onLectureList(Model model, @PathVariable int pageNum) {
		List<OnLecture> list = new ArrayList<>();
		Page<OnLecture> page =onLectureService.selectAll(pageNum);
		page.iterator().forEachRemaining(list::add);
		model.addAttribute("onLectureList", list);
		model.addAttribute("page", page);
		return "roadmap/onLectureList";
	}

//	@RequestMapping("/detail/{roadmapNo}")
//	public String roadmapDetail(Model model, @PathVariable Long roadmapNo) {
//		Roadmap roadmap = service.selectById(roadmapNo);
//		
//		model.addAttribute("roadmap", roadmap);
//		return "roadmap/detail";
//	}
	@RequestMapping("/detail/{roadmapName}")
	public String roadmapDetail(Model model, @PathVariable String roadmapName){
		List<Roadmap> list = service.selectByName(roadmapName);
		Roadmap roadmap = null;
		for(Roadmap r: list) {
			System.out.println(r.getOnLecture());
			 roadmap = r;
		}
		
		model.addAttribute("list", list);
		model.addAttribute("roadmap",roadmap);
		return "roadmap/detail";
	}

	@RequestMapping("/insert/{onLectureNo}")
	public String roadmapInsert(@PathVariable Long onLectureNo, Roadmap roadmap) {
		
		roadmap.setOnLecture(onLectureService.selectOnLectureById(onLectureNo));

		service.insert(roadmap);
		return "redirect:list";
	}
	//강의 추가하기
	@RequestMapping("/onLectureAdd")
	@ResponseBody
	public OnLecture onLectureAdd(Long onLectureNo) {
		System.out.println(onLectureNo);
		OnLecture onLecture = onLectureService.selectOnLectureById(onLectureNo);
		System.out.println(onLectureService.selectOnLectureById(onLectureNo));
		return onLecture;
	}


}
