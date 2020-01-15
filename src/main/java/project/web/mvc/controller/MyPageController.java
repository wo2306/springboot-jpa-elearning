package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.ClassQuestion;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.domain.Review;
import project.web.mvc.domain.WishList;
import project.web.mvc.service.ClassQuestionService;
import project.web.mvc.service.OrderService;
import project.web.mvc.service.ReviewService;
import project.web.mvc.service.WishListService;
import project.web.mvc.util.LoginCheck;

@Controller
@RequestMapping("/myPage")
@RequiredArgsConstructor
public class MyPageController {
    private final OrderService orderService;
    private final WishListService wishlistService;
    private final ReviewService reviewService;
    private final ClassQuestionService classQuestionService;
    
    @RequestMapping("/info/{pageNum}")
    public String onSelect(@PathVariable Integer pageNum, Model model) {
        List<OnOrder> orderList = new ArrayList<>();
        Page<OnOrder> orderPage = orderService.onSelect(pageNum);
        orderService.onSelect(pageNum).iterator().forEachRemaining(orderList::add);
       
        if (!orderList.isEmpty()) {
            model.addAttribute("orderList", orderList);
            model.addAttribute("orderPage", orderPage);
        }
        
        List<Review> reviewList = new ArrayList<>();
        Page<Review> reviewPage = reviewService.selectByUserId(pageNum);
        reviewService.selectByUserId(pageNum).iterator().forEachRemaining(reviewList::add);
        
        if(!reviewList.isEmpty()) {
        	model.addAttribute("reviewList", reviewList);
        	model.addAttribute("reviewPage", reviewPage);
        }
        
        List<ClassQuestion> questionList = new ArrayList<>();
        Page<ClassQuestion> questionPage = classQuestionService.selectByUserdbId(pageNum);
        classQuestionService.selectByUserdbId(pageNum).iterator().forEachRemaining(questionList::add);
        
        System.out.println(questionList.toString());
        if(!questionList.isEmpty()) {
        	model.addAttribute("questionList", questionList);
        	model.addAttribute("questionPage", questionPage);
        }
        
        
        
        return "myPage/info";
    }

    @RequestMapping("/offSelect")
    @ResponseBody
    public List<OffOrder> offSelect(Integer pageNum, Model model) {
        List<OffOrder> list = new ArrayList<>();
        orderService.offSelect(pageNum == null ? 1 : pageNum).iterator().forEachRemaining(list::add);
        return list;
    }
    
    @RequestMapping("/info/wishlisttab")
    @ResponseBody
	public List<WishList> wishlisttab(Model model) {
		System.out.println("콘트롤러 인");
		List<WishList> list = wishlistService.wishlistselectAll();
        	
		if (!list.isEmpty())
        	model.addAttribute("list", list);
		  
		return list;
  }
    
    @DeleteMapping(value ="/delete")
    @ResponseBody
	public void delete(Long wishListNo) {
		System.out.println("wishListNo : " + wishListNo);
		wishlistService.wishlistDelete(wishListNo);
	
	}

}

