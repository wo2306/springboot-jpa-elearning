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
	
	//wishlist 버튼 눌렀을때
	@RequestMapping("/wishlist")
	@ResponseBody
	public void wishlistInsert(Long onLectureNo) {
		
		System.out.println(" wish insert controller 진입");
		wishlistService.wishlistInsert(onLectureNo); 
		
	}
	
}
