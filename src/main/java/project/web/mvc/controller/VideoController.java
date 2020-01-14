package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/video")
public class VideoController {

	@RequestMapping("")
	public String main() {
		System.out.println("오니??");
		return"";
	}
	
}
