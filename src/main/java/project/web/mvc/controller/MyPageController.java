package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.domain.WishList;
import project.web.mvc.service.OrderService;
import project.web.mvc.service.WishListService;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/myPage")
@RequiredArgsConstructor
public class MyPageController {
    private final OrderService orderService;
    private final WishListService wishlistService;
    long userdbNo = 1L;
    
    @RequestMapping("/info")
    public void onSelect(Integer pageNum, Model model) { 
    	List<OnOrder> list = orderService.onSelect(pageNum == null ? 0 : pageNum);
        if (!list.isEmpty())
            model.addAttribute("list", list);
    }

    @RequestMapping("/offSelect")
    @ResponseBody
    public List<OffOrder> offSelect(Integer pageNum, Model model) {
        List<OffOrder> list = orderService.offSelect(pageNum == null ? 0 : pageNum);
        return list;
    }
    
    @PostMapping("/info/wishlisttab")
    @ResponseBody
	public List<WishList> wishlisttab(Model model) {
		
		List<WishList> list = wishlistService.wishlistselectAll();
        	System.out.println(list);
		if (!list.isEmpty())
        	model.addAttribute("list", list);
            
		return list;
  }

}

