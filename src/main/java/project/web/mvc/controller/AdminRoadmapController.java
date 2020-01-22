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
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@RequestMapping("/insert")
	public String roadmapInsert(@RequestParam List<Long> list, Roadmap roadmap) {
		service.insert(list, roadmap);
		return "redirect:/admin/roadmap";
	}
	@RequestMapping("/update/{roadmapName}")
	public String roadmapUpdate(@PathVariable String roadmapName, @RequestParam List<Long> list, Roadmap roadmap) {
		service.update(roadmapName ,list, roadmap);
		return "redirect:/admin/roadmap";
	}
	
	@RequestMapping("/delete/{roadmapName}")
	public String roadmapDelete(@PathVariable String roadmapName) {
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
	 @RequestMapping("/{command}/{keyword}/{pageNum}")
	    public String category(@PathVariable String command, @PathVariable String keyword,
	                           @PathVariable int pageNum, Model model) {
	        List<OnLecture> list = new ArrayList<>();
	        Page<OnLecture> page = null;
	        if (command.equals("all")) {
	            page = onLectureService.selectByKeyword("", pageNum);
	        } else if (command.equals("category")) {
	            page = onLectureService.selectByCategory(keyword, pageNum);
	        } else if (command.equals("teacher")) {
	            page = onLectureService.selectByTeacherName(keyword, pageNum);
	        } else if (command.equals("name")) {
	            page = onLectureService.selectByonLectureName(keyword, pageNum);
	        }
	        page.iterator().forEachRemaining(list::add);
	        model.addAttribute("list", list);
	        model.addAttribute("keyword", keyword);
	        model.addAttribute("command", command);
	        model.addAttribute("page", page);
	        return "admin/roadmap/onLectureList";
	    }
	 
	//강의 추가하기
		@RequestMapping("/onLectureAdd")
		@ResponseBody
		public OnLecture onLectureAdd(Long onLectureNo) {
			OnLecture onLecture = onLectureService.selectOnLectureById(onLectureNo);
			System.out.println(onLectureService.selectOnLectureById(onLectureNo));
			return onLecture;
		}
}
