package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("controller")
public class HomeController {

	@RequestMapping("/")
	public String index() {
		return"index";
	}
}
