package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.WishList;

public interface WishListService {

	
	public void wishlistInsert(Long onLectureNo);
	
//	public List<WishList> wishlistselectAll(int pageNum);

	List<WishList> wishlistselectAll();
	
	public void wishlistDelete(Long onLectureNo);

	 
}
