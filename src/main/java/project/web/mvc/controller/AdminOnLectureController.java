package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/onLecture")
public class AdminOnLectureController {
	
	@RequestMapping("")
	public String main() {
		System.out.println("어드민 온렉쳐 컨트롤러");
		return "";
	}

	@RequestMapping("insertOnLecture")
	public String insert() {
		System.out.println("어드민 온렉쳐 컨트롤러");
		return"/admin/onLecture/insertOnLecture";
	}
}
