package project.web.mvc.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OffLecture;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.UserdbRepository;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.OffLectureService;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.UserdbService;

@Controller
@RequiredArgsConstructor
public class HomeController {
	private final UserdbService userdbService;
	private final OnLectureService onLectureService;
	private final AuthorityService authorityService;
	private final OffLectureService offLectureService;
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
	
	///////////////////////////////////////////////////////
	
	/**
	 * 처리하는 컨트롤러
	 * */
	
//	회원가입 처리
	@RequestMapping("/signUp")
	@Transactional
	@ResponseBody
	public int execSignUp(String userdbEmail, String userdbNickname, String userdbPassword) {
		System.out.println("HomeController call *** /signUp");
		System.out.println(userdbEmail+userdbNickname+userdbPassword+"나오니?");

		Userdb userdb = new Userdb();
		System.out.println("얍"+userdb.getAuthority()+"권한을보자");
		userdb.setUserdbEmail(userdbEmail);
		userdb.setUserdbNickname(userdbNickname);
		userdb.setUserdbPassword(userdbPassword);
		//회원가입
		userdbService.insert(userdb);
		//회원가입 후 authority db 저장
		authorityService.insert(userdb);
		System.out.println("회원가입끝");
		//1 : 성공 , 0: 실패
		int result = 1;
		return result;
	}
	
	//카카오로그인처리
	@RequestMapping("/kakaoLogin")
	@ResponseBody
	public int kakaoLogin(String id, String kakaoNickname, Model mv) {
		System.out.println("카카오로그인 controller");
		Userdb user = userdbService.selectByUserdbEmail(id);
		//결과: 0:이미 유저 -> 로그인, 1:회원가입폼으로 이동, 2:회원가입성공->로그인
		
			//userdb가 있으면 전에 가입한적있음. 로그인해야함
		if(user!=null) {
			System.out.println("카카오로그인의 컨트롤러에서 user!=null !!!!");
			return 0;
		}else {
			if(nicknameCheck(kakaoNickname)==0) {
				System.out.println("회원가입은 처음인데 nickname이 중복이다. 새로 작성하게하자.");
				return 1;
			}
			//userdb가 없으면 신규
			System.out.println("카카오사인업");
			Userdb userdb = new Userdb();
			userdb.setUserdbEmail(id);
			userdb.setUserdbNickname(kakaoNickname);
			userdb.setUserdbPassword("123456789");
			userdb.setAuthority(2L);
			System.out.println("얍"+userdb.getAuthority()+"권한을보자");
			//회원가입
			userdbService.insert(userdb);
			//회원가입 후 authority db 저장
			authorityService.insert(userdb);
			System.out.println("회원가입끝");
			return 2;
		}
	}
	
	//Email중복체크(=kakaoId)
	@RequestMapping("/idCheck")
	@ResponseBody
	public int idCheck(String userdbEmail) {
		System.out.println(userdbEmail+"아이디체크");
		boolean idCheck = userdbService.duplicatedEmailCheck(userdbEmail);
		//true면 중복, false면 사용가능
		//0: 중복, 1:사용가능
		int result = (idCheck)? 0 : 1;
		return result;
	}
	
	//닉네임 중복체크
	@RequestMapping("/nicknameCheck")
	@ResponseBody
	public int nicknameCheck(String userdbNickname) {
		System.out.println(userdbNickname+"userdbNickname");
		boolean nicknameCheck = userdbService.duplicatedNicknameCheck(userdbNickname);
		//true면 중복, false면 사용가능
		//0: 중복, 1:사용가능
		int result = (nicknameCheck)? 0 : 1;
		return result;
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