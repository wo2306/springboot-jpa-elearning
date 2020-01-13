package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.domain.Review;
import project.web.mvc.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/listAll")
	public void selectAll() {}
	
	@RequestMapping("/listOnlecture")
	public void selectByOnlectureNo(Integer pageNum, Model model) {
		//임의로 테스트하는 OnlectureNo 500값 (디비에 따라 다름)
		Long tempOnlectureNo=500L;
		List<Review> list= reviewService.selectByOnlectureNo(pageNum ==null ? 0:pageNum, tempOnlectureNo);
		if(!list.isEmpty()) {
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
}
