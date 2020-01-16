package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import project.web.mvc.domain.Userdb;

public interface UserdbRepository extends PagingAndSortingRepository<Userdb, Long>{

	Userdb findByUserdbEmail(String userdbEmail);
	
	Userdb findByUserdbNo(Long userdbNo);

	List<Userdb> findByUserdbNickname(String userdbNickname);
	 @Query("select u from Userdb u where u.userdbEmail LIKE CONCAT('%',:keyword,'%') or u.userdbNickname LIKE CONCAT('%',:keyword,'%')")
	Page<Userdb> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

}
