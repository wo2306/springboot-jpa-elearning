package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import project.web.mvc.domain.Academy;

public interface AcademyRepository extends CrudRepository<Academy, Long> {
	Academy findByAcademyNo(Long academyNo);
	
	@Query("select o from Academy o where o.academyName LIKE CONCAT('%',:keyword,'%')")
	List<Academy> findByacademyeName(@Param("keyword") String keyword);
	
	 @Query("select o from Academy o where o.academyAddrCity LIKE CONCAT('%',:keyword,'%')")
	 List<Academy> findByCity(@Param("keyword") String keyword);
	 
	 @Query("select o from Academy o where o.academyAddrDetail LIKE CONCAT('%',:keyword,'%')")
	 List<Academy> findByAddress(@Param("keyword") String keyword);
}
