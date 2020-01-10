package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminHomeController {
	
	@RequestMapping("")
	public String main() {
		System.out.println("어드민컨트롤러호출");
		return "admin/adminIndex";
	}
	
	@RequestMapping("/a")
	public String a() {
		System.out.println("aaa");
		return "admin/academy/adminUpdate";
	}
	
	@RequestMapping("/b")
	public String b() {
		System.out.println("bbb");
		return "admin/academy/adminStudent";
	}
	
	
	

}
