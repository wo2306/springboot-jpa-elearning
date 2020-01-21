package project.web.mvc.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OffLecture;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.UserdbRepository;
import project.web.mvc.service.OffLectureService;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.UserdbService;

@Controller
@RequiredArgsConstructor
public class HomeController {
	private final OnLectureService onLectureService;
	private final OffLectureService offLectureService;
	private final UserdbService userdbService;
	private final UserdbRepository userdbRepository;
	
	
	/**
	 * 맵핑하는 컨트롤러
	 * */
	
	//index맵핑
	@RequestMapping("/")
	public String index(Model model) {
		System.out.println("인텍스 호출*************************");
		List<OnLecture> lectureList = new ArrayList<>();
		onLectureService.selectAll(1).iterator().forEachRemaining(lectureList::add);
		model.addAttribute("onLectureList", lectureList);
		//리스트 그냥 뿌리는거(그냥 뿌리기-됨)
		//List <OffLecture> offLectureList = new ArrayList<>();
		//offLectureService.selectAll(1).iterator().forEachRemaining(offLectureList::add);
		List <OffLecture> offLectureList = new ArrayList<>();
		offLectureList = offLectureService.selectByDate();
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

//	
//	//카카오로그인처리2
//	@RequestMapping(value="/oauth/kakaoCheck", produces ="application/json")
//	public String testkakao(@RequestParam("code") String code, HttpServletRequest request, RedirectAttributes ra, HttpSession session, HttpServletResponse response) throws IOException{
//		
//		System.out.println("code: "+code);
//		return"/oauth/kakaoCheck";
//	}
//	
//	@RequestMapping("/oauth/kakaoCheck")
//	public String kakao() {
//		System.out.println("카카오+oauth컨트롤러");
//		return"/oauth/kakaoCheck";
//	}
//	
	static int n = 6; // n자리 임시키
    static char[] chs = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
    
	@RequestMapping("/findPwd")
	public String findPwd(Model model) {
		
		Random rd = new Random();
		StringBuilder sb = new StringBuilder();
        for (int i = 0; i < n; i++) {
            char ch = chs[rd.nextInt(chs.length)];
            sb.append(ch);
        }
        String tempPwd = sb.toString();
        model.addAttribute("tempPwd", tempPwd);
        
        //userdbService.updatePw(tempPwd);
        
        return "/findPwd";
	}
	
    
	@RequestMapping("/findPwdResult")
	public String findPwdResult(Model model, String id, String email, String tempPwd) {
		System.out.println(id+email+tempPwd);
		
		model.addAttribute("id", id);
		model.addAttribute("email", email);
		model.addAttribute("tempPwd", tempPwd);
		
		Userdb tempUserdb= userdbService.selectByUserdbEmail(email);
			
		if(tempUserdb!=null && tempUserdb.getUserdbNickname().equals(id)) {
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String encodedPassword = passwordEncoder.encode(tempPwd);
			tempUserdb.setUserdbPassword(encodedPassword);
			userdbRepository.save(tempUserdb);
			model.addAttribute("message", "임시 비밀번호가 발송되었습니다.");
			model.addAttribute("state", true);
		}
		else {
			model.addAttribute("message", "입력하신 정보가 맞지않습니다.");
			model.addAttribute("state",false);
		}
		
        return "/findPwdResult";
	}
	
	
	
	
}