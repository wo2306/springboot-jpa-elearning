package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.domain.Review;
import project.web.mvc.service.ReviewService;

@Controller
@RequestMapping("/admin")
public class AdminReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/review/list/{pageNum}")
	public String selectAll(@PathVariable int pageNum, Model model) {
		List<Review> list = new ArrayList<>();
		Page<Review> page = reviewService.findAll(pageNum);
		page.iterator().forEachRemaining(list::add);
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		
		return "admin/review/list";
	}
	
	@RequestMapping("/review/updateForm/{reviewNo}")
	public String updateForm(@PathVariable Long reviewNo, Model model) {
		Review review= reviewService.selectById(reviewNo);
		model.addAttribute("review",review);
		return "admin/review/updateReview";
	}
	
	@RequestMapping("/review/update")
	public String update (Review review) {
		
		return "redirect:/admin/review/list/1";
	}
}
