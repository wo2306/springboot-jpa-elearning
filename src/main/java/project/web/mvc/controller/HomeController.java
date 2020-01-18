package project.web.mvc.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OffLecture;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.OffLectureService;
import project.web.mvc.service.OnLectureService;

@Controller
@RequiredArgsConstructor
public class HomeController {
	private final OnLectureService onLectureService;
	private final OffLectureService offLectureService;
	
	
	/**
	 * 맵핑하는 컨트롤러
	 * */
	
	//index맵핑
	@RequestMapping("/")
	public String index(Model model) {
		System.out.println("인텍스 호출*************************");
		List<OnLecture> lectureList = new ArrayList<>();
		onLectureService.selectAll(1).iterator().forEachRemaining(lectureList::add);
		System.out.println(lectureList);
		model.addAttribute("onLectureList", lectureList);
		//리스트 그냥 뿌리는거(그냥 뿌리기-됨)
		//List <OffLecture> offLectureList = new ArrayList<>();
		//offLectureService.selectAll(1).iterator().forEachRemaining(offLectureList::add);
		List <OffLecture> offLectureList = new ArrayList<>();
		offLectureList = offLectureService.selectByDate();
		System.out.println("여기나오ㅑ?"+offLectureList);
		model.addAttribute("offLectureList", offLectureList);
		return"index";
	}
	
	//로그인페이지맵핑
	@RequestMapping("/login")
	public String dispLogin() {
		System.out.println("HomeController call *** /login");
		return "/login";
	}
	
	//로그인결과페이지맵핑
	@RequestMapping("/login/result")
	public String dispLoginResult() {
		System.out.println("Home ********** result");
		return "redirect:/";
	}
	
	//회원가입페이지 맵핑
	@RequestMapping("/signUpForm")
	public String dispSignUp() {
		System.out.println("홈컨트롤러의 sighupForm 호출중");
		return "signUpForm";
	}
	
	
	//권한오류페이지맵핑
	@RequestMapping("/denied")
	public String denied() {
		return "denied";
	}


}