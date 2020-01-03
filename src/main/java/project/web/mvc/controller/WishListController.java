package project.web.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.service.WishListService;

@Controller
public class WishListController {
	
	@Autowired
	private WishListService wishlistService;
	
	@RequestMapping("/wishlist")
	public void wishlistInsert(int onLectureNo) {
		//로그인이 되어있을때 csrf에서 studentNo를 빼서 service에 갈때 가져간다.

		//wishlistService.wishlistInsert(studentNo, onLectureNo);
		 
	}
}
