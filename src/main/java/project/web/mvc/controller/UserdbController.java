package project.web.mvc.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ser.std.ClassSerializer;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.ClassQuestion;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.UserdbRepository;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.CartService;
import project.web.mvc.service.ClassQuestionService;
import project.web.mvc.service.OrderService;
import project.web.mvc.service.ReviewService;
import project.web.mvc.service.SugangService;
import project.web.mvc.service.UserdbService;
import project.web.mvc.service.WishListService;
import project.web.mvc.util.LoginCheck;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserdbController {
	private final UserdbService userdbService;
	private final AuthorityService authorityService;
	private final WishListService wishListService;
	private final SugangService sugangService;
	private final CartService cartService;
	private final OrderService orderService;
	private final ClassQuestionService classQuestionService;
	private final ReviewService reviewService;
	
	
	
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
		return 1;
	}
	
	//카카오로그인처리
	@RequestMapping("/kakaoLogin")
	@ResponseBody
	@Transactional
	public int kakaoLogin(String id, String userdbNickname) {
		System.out.println("카카오로그인 controller");
		Userdb user = userdbService.selectByUserdbEmail(id);
		//결과: 0:이미 유저 -> 로그인, 1:회원가입폼으로 이동, 2:회원가입성공->로그인
		
			//userdb가 있으면 전에 가입한적있음. 로그인해야함
		if(user!=null) {
			System.out.println("카카오로그인의 컨트롤러에서 user!=null !!!!");
			return 0;
		}else if(nicknameCheck(userdbNickname)==0){
				System.out.println("회원가입은 처음인데 nickname이 중복이다. 새로 작성하게하자.");
				return 1;
		}else {
			//userdb가 없으면 신규
			System.out.println("카카오사인업");
			Userdb userdb = new Userdb();
			userdb.setUserdbEmail(id);
			userdb.setUserdbNickname(userdbNickname);
			userdb.setUserdbPassword("1234");
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
		System.out.println("닉네임 체크중"+userdbNickname+"userdbNickname");
		boolean nicknameCheck = userdbService.duplicatedNicknameCheck(userdbNickname);
		//true면 중복, false면 사용가능
		//0: 중복, 1:사용가능
		int result = (nicknameCheck)? 0 : 1;
		return result;
	}
	
	//닉네임 중복 사인업폼
	@Transactional
	@RequestMapping("/nickNameSignUpForm")
	public ModelAndView nickNameSignUpForm(String id, String userdbNickname, String kakaoToken) {
		System.out.println("유저컨트롤러의 닉네임사인업폼");
		List<String>list = new ArrayList<>();
		list.add(id);
		list.add(userdbNickname);
		list.add(kakaoToken);
		System.out.println(userdbNickname);
		ModelAndView mnv = new ModelAndView("user/nickNameSignUpForm", "list", list);
		return mnv;
	}
	
	
	
	
	/**
	 * 	private final UserdbService userdbService;
	private final AuthorityService authorityService;
	private final WishListService wishListService;
	private final SugangService sugangService;
	private final CartService cartService;
	private final OrderService orderService;
	private final ClassQuestionService classQuestionService;
	private final ReviewService reviewService;
	 * */
	
//	
//	@RequestMapping("/goodbyeCheck")
//	@Transactional
//	public int goodbye(String password) {
//		Long userdbNo = LoginCheck.getUserdb().getUserdbNo();
//		int result;
//		//0:현재 이용중인 서비스가 있습니다. 정말 탈퇴할건지 물어보자
//		//1:이용중인 서비스가 없다. 탈퇴로 넘어가자
//		//2:패스워드가 틀렸다.
//		//3:다음스텝
//		result = (userdbService.checkPassword(password)) ? 2:3;
//		if(result==2) return result;
//		if(result==3) {
//			//구매내역확인
//			orderService.sele
//			
//		}
//
//			
//		return result;
//	}
	
	
//	
//	//쿠키처리
//	@RequestMapping("/logoutCheck")
//	public String logoutCheck(HttpServletRequest request, HttpServletResponse response,
//            Authentication authentication) {
//		System.out.println("여기는 쿠키체크");
//		Cookie[]cookies=request.getCookies();
//		System.out.println("ㅋ쿠키잇니"+cookies);
//		if(cookies!=null) {
//			System.out.println("쿠키가 널이 아니다");
//			for(int i=0; i<cookies.length; i++) {
//				cookies[i].setMaxAge(0);
//				response.addCookie(cookies[i]);
//			}
//		}
//		return "redirect:/";
//	}
//	
	
}