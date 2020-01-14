package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Userdb;

public interface UserdbRepository extends CrudRepository<Userdb, Long>{

	Userdb findByUserdbEmail(String userdbEmail);
	
	Userdb findByUserdbNo(Long userdbNo);

	
	@Query("select user from Userdb user where upper(?1) like '%' || upper(?2) || '%'")
	List<Userdb> searchByKey(String key, String value);

	List<Userdb> findByUserdbNickname(String userdbNickname);

}
