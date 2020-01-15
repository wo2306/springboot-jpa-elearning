package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.domain.WishList;
import project.web.mvc.service.OrderService;
import project.web.mvc.service.UserdbService;
import project.web.mvc.service.WishListService;

@Controller
@RequestMapping("/myPage")
@RequiredArgsConstructor
public class MyPageController {
    private final OrderService orderService;
    private final WishListService wishlistService;
    private final UserdbService userdbService;
    
    @RequestMapping("/info/{pageNum}")
    public String onSelect(@PathVariable Integer pageNum, Model model) {
        List<OnOrder> orderList = new ArrayList<>();
        Iterator<OnOrder> iterator = orderService.onSelect(pageNum).iterator();
        iterator.forEachRemaining(orderList::add);
        if (!orderList.isEmpty()) {
            model.addAttribute("orderList", orderList);
        }
        return "myPage/info";
    }

    @RequestMapping("/offSelect")
    @ResponseBody
    public List<OffOrder> offSelect(Integer pageNum, Model model) {
        List<OffOrder> list = orderService.offSelect(pageNum == null ? 1 : pageNum);
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
    
    @RequestMapping(value ="/myAccount")
    public String myAccount(Long wishListNo) {
    	
    	return "myPage/myAccount";
    }
    
    @RequestMapping(value ="/myAccount/passwordCheck")
    @ResponseBody
    public int passwordCheck(String userdbPassword0) {
    	//true = 비밀번호 일치, false = 비밀번호 불일치
    	//true : 0, false : 1
    	int result = (userdbService.checkPassword(userdbPassword0))? 0 : 1;
    	return result;
    	
    }

}

