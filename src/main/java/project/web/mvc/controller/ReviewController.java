package project.web.mvc.controller;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
//		List<Review> list = reviewService.selectByOnlectureNo(pageNum == null ? 0 : pageNum, onLectureNo);
//		if (!list.isEmpty()) {
//				model.addAttribute("reviewList", list);
//		}
	}
	@RequestMapping("/listUserdb")
	public void selectByUserdbNo(Integer pageNum, Model model) {
		//임의로 테스트하는 userdbNo 502 값(디비에 따라 다름)
//		Long tempUserdbNo=502L;
//		List<Review> list=reviewService.selectByUserId(pageNum==null? 0:pageNum, tempUserdbNo);
//		if(!list.isEmpty()) {
//			model.addAttribute("reviewList",list);
//			
//		}
	}
	
	@RequestMapping("/insert")
	public String reviewInsert(Model model) {
		System.out.println("리뷰 인서트 ctrl");
		
//		Integer reviewScore = (Integer) model.getAttribute("reviewScore");
//		
//		String reviewContent = (String)model.getAttribute("reviewContent");
//		Long onLectureNo = (Long)model.getAttribute("onLectureNo");
//		System.out.println("받아온 값(스코어, 내용, 온라인강의넘버 : " +reviewScore +reviewContent +onLectureNo);
		
		//reviewService.insert(new Review());
		
		return "myPage/info";
	}
	
    @DeleteMapping(value ="/delete")
    @ResponseBody
	void reviewDelete(Long reviewNo) {

		System.out.println("리뷰 delete ctrl(리뷰 넘버 : ) " +reviewNo);
		reviewService.delete(reviewNo);
		
	}
	
	@RequestMapping("/update")
	public String reviewUpdate(Model model, Review review) {
		
		reviewService.update(review);
		
		return "redirect:/myPage/info/1";
	}
}
