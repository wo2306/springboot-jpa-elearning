package project.web.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import project.web.mvc.service.WishListService;

@Controller
public class WishListController {
	
	@Autowired
	private WishListService wishlistService;

	Long userdbNo = 1L;
	
	//wishlist 버튼 눌렀을때
	@RequestMapping("/wishlist")
	@ResponseBody
	public void wishlistInsert(Long onLectureNo) {
		//로그인이 되어있을때 csrf에서 studentNo를 빼서 service에 갈때 가져간다.
		System.out.println("insert controller 진입");
		wishlistService.wishlistInsert(onLectureNo); 
		
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
//	@DeleteMapping(value ="/myPage/delete")
//	@ResponseBody
//	public String delete(Long wishListNo) {
//		System.out.println("삭제버튼 눌렀어요");
//		System.out.println("wishListNo" + wishListNo);
//		return "삭제됨";
//	}
}
