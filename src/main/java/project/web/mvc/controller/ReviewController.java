package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.domain.Review;
import project.web.mvc.service.ReviewService;
import project.web.mvc.util.LoginCheck;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/listAll")
	public void selectAll() {}

	@RequestMapping("/listOnlecture/{onLectureNo}")
	public void selectByOnlectureNo(Integer pageNum, Model model, @PathVariable Long onLectureNo) {
		//임의로 테스트하는 OnlectureNo 500값 (디비에 따라 다름)
		List<Review> list = reviewService.selectByOnlectureNo(pageNum == null ? 0 : pageNum, onLectureNo);
		if (!list.isEmpty()) {
				model.addAttribute("reviewList", list);
		}
	}
	@RequestMapping("/listUserdb")
	public void selectByUserdbNo(Integer pageNum, Model model) {
		//임의로 테스트하는 userdbNo 502 값(디비에 따라 다름)
		Long tempUserdbNo=502L;
		List<Review> list=reviewService.selectByUserId(pageNum==null? 0:pageNum, tempUserdbNo);
		if(!list.isEmpty()) {
			model.addAttribute("reviewList",list);
			
			//임의로 저장할 작성자 이름 
			String tempNickName =list.get(0).getUserdb().getUserdbNickname();
			model.addAttribute("tempName",tempNickName);
		}
	}
	
	@RequestMapping("/insert")
	public String reviewInsert(String reviewContent, Integer userdbNo, Integer onlectureNo) {
		System.out.println("리뷰 인서트 ctrl");
		
		reviewService.insert(new Review());
		
		return "ㅇㅇ";
	}
	
	@RequestMapping("/delete")
	public String reviewDelete() {
		System.out.println("리뷰 delete ctrl");
		return "dd";
	}
}
