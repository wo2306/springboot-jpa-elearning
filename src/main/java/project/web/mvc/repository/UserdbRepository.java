package project.web.mvc.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Userdb;

public interface UserdbRepository extends CrudRepository<Userdb, Long>{

	Userdb findByUserdbEmail(String userdbEmail);
	
	Userdb findByUserdbNo(Long userdbNo);

	
//	@Modifying
//	@Query("update userdb u set u.userdb_email =?1, u.userdb_nickname= ?2, us.authority=?3 where u.userdb_no = ?4")
//	public Userdb update(Userdb userdb);
}
