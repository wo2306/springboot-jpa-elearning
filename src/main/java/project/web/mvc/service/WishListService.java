package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.WishList;

public interface WishListService {

	
	public void wishlistInsert(Long userdbNo, Long onLectureNo);
	
	public List<WishList> wishlistselectAll();
	
	public void wishlistDelete(Long onLectureNo);
}
