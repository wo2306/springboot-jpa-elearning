package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping("/insert")
	public String roadmapInsert(@RequestParam List<Long> list, Roadmap roadmap) {
		System.out.println(list.size()+"리스트받기~!!");
		service.insert(list, roadmap);
		return "redirect:/admin/roadmap";
	}
	@RequestMapping("/update/{roadmapName}")
	public String roadmapUpdate(@PathVariable String roadmapName, @RequestParam List<Long> list, Roadmap roadmap) {
		//System.out.println(list.size()+"@@@@@@리스트 사이즈 확인@@@@@");
		//System.out.println(roadmapName +"로드맵 제목!!!!");
		service.update(roadmapName ,list, roadmap);
		return "redirect:/admin/roadmap";
	}
	
	@RequestMapping("/delete/{roadmapName}")
	public String roadmapDelete(@PathVariable String roadmapName) {
		System.out.println(roadmapName+"controller!!");
		service.delete(roadmapName);
		return "redirect:/admin/roadmap";
		
	}
	@RequestMapping("/updateForm/{roadmapName}")
	public String roadmapUpdateForm(@PathVariable String roadmapName, Model model) {
		List<Roadmap> list = service.selectByName(roadmapName);
		
		model.addAttribute("list", list);
		model.addAttribute("roadmap", list.get(0));
		return "admin/roadmap/updateForm";
	}
}
