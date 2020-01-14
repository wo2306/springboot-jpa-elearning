package project.web.mvc.controller;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import java.net.URI;
import java.util.Map;

@Controller
public class VideoController {

	@RequestMapping("videoLogin")
	public String login() {
		return "/admin/onLecture/login";
	}

	@RequestMapping("youtube")
	public String main() {
		return "/admin/onLecture/youtube/upload_video";
	}

	@RequestMapping("oauth2callback")
	public String token(String code, Model model, String access_token) {
		model.addAttribute("code", code);
		System.out.println("token : "+ access_token);
		return "/admin/onLecture/video";
	}

	@RequestMapping("token")
	public void access(String access_token) {
		System.out.println(access_token);
	}

}
