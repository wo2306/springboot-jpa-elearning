package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.WishList;

public interface WishListService {

	
	public WishList wishlistInsert(Long userdbNo, Long onLectureNo);
	
//	public List<WishList> wishlistselectAll(int pageNum);
	public List<WishList> wishlistselectAll(Long userdbNo);
	
	public void wishlistDelete(Long onLectureNo);
}
