package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.WishList;
import project.web.mvc.service.WishListService;

@Controller
public class WishListController {
	
	@Autowired
	private WishListService wishlistService;
	
	//wishlist 버튼 눌렀을때
	@RequestMapping("/wishlist")
	public String wishlistInsert(OnLecture onlecture) {
		//로그인이 되어있을때 csrf에서 studentNo를 빼서 service에 갈때 가져간다.

		Long onlectureNo = onlecture.getOnLectureNo();
		//wishlistService.wishlistInsert(studentNo, onLectureNo); 
		
		return "redirect:onLecture";
	}
	
	//장바구니 탭 누르기 
	@RequestMapping("/wishlisttab")
	public ModelAndView wishlisttab() {
		List<WishList> list = wishlistService.wishlistselectAll();
		return new ModelAndView("myPage/info", "list", list) ;
		
	}
	
	//장바구니에서 delete 누르기 
	@RequestMapping("/delete/{wishListNo}")
	public String delete(@PathVariable Long wishListNo) {
		wishlistService.wishlistDelete(wishListNo);
		
		return "myPage/info";
	}
}
