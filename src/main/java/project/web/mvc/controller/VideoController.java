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
	
	@RequestMapping("/myUpload")
	public String myUpload() {
		System.out.println("마이업로드호출");
		return "/admin/onLecture/youtube/my_uploads";
	}
	@RequestMapping("/insertVideo")
	
	public String insert() {
		System.out.println("insertVideo call *****");
		return "/admin/onLecture/my_uploads";
	}
}
