package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	

	

	
	//장바구니에서 delete 누르기 
//	@RequestMapping("/delete")
//	public String delete(@PathVariable Long wishListNo) {
//		System.out.println("delete 눌렀어여");
//		wishlistService.wishlistDelete(wishListNo);
//		
//		return "myPage/info";
//	}
	
	//delete 누르기
	@DeleteMapping(value = "/delete/{wishlistNo}")
	public String delete(@PathVariable Long wishlistNo) {
		System.out.println("삭제버튼 눌렀어요");
		System.out.println("wishlistNo" + wishlistNo);
		return "삭제됨";
	}
}
