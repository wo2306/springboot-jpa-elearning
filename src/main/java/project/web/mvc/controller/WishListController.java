package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.WishList;
import project.web.mvc.service.WishListService;

@Controller
public class WishListController {
	
	@Autowired
	private WishListService wishlistService;
	Long userdbNo = 1L;
	
	//wishlist 버튼 눌렀을때
	@RequestMapping("/wishlist/{onLectureNo}")
	public WishList wishlistInsert(@PathVariable Long onLectureNo) {
		//로그인이 되어있을때 csrf에서 studentNo를 빼서 service에 갈때 가져간다.
		
		WishList wishlist = wishlistService.wishlistInsert(userdbNo, onLectureNo); 
		
		return wishlist;
	}
	
	//장바구니 탭 누르기 
//	@RequestMapping("/wishlisttab")
//	public ModelAndView wishlisttab(Model model, Integer pageNum) {
//		List<WishList> list = wishlistService.wishlistselectAll(pageNum == null ? 0 : pageNum);
//        if (!list.isEmpty())
//        	model.addAttribute("list", list);
//        return new ModelAndView("myPage/info");
//    }
	
	@RequestMapping("/wishlisttab")
	public ModelAndView wishlisttab(Model model, Long userdbNo) {
		System.out.println("tab눌렀음");
		List<WishList> list = wishlistService.wishlistselectAll(userdbNo);
        if (!list.isEmpty())
        	model.addAttribute("list", list);
        return new ModelAndView("myPage/info");
    }

	
	//장바구니에서 delete 누르기 
	@RequestMapping("/delete/{wishListNo}")
	public String delete(@PathVariable Long wishListNo) {
		wishlistService.wishlistDelete(wishListNo);
		
		return "myPage/info";
	}
}
