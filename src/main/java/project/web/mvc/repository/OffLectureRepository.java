package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import project.web.mvc.domain.OffLecture;
import project.web.mvc.domain.OnLecture;

public interface OffLectureRepository extends PagingAndSortingRepository<OffLecture, Long> {

	OffLecture findByOffLectureNo(Long offLectureNo);
	Page<OffLecture> findByOrderByOffLectureNo(Pageable pageable);
	
	
	@Query("select o from OffLecture o order by o.offLectureDate desc")
	 List<OffLecture> selectByDate();
	 
	List<OffLecture> findByOrderByOffLectureDateDesc();
	/*
	 * @Query("select o from OffLecture o order by o.offLectureDate desc")
	 * List<OffLecture> selectByDate();
	 */
	
	/*
	 * @Query("select o from OffLecture o") List<OffLecture> selectByDate();
	 * List<OffLecture> findTop5ByOrderByOffLectureDateDesc();
	 */
	 @Query("select o from OffLecture o where o.offLectureName LIKE CONCAT('%',:keyword,'%')")
	 Page<OffLecture> findByoffLectureName(@Param("keyword") String keyword, Pageable pageable);
	
	 @Query("select o from OffLecture o where o.offLectureName LIKE CONCAT('%',:keyword,'%') or o.offLectureTeacher LIKE CONCAT('%',:keyword,'%')")
	    Page<OffLecture> findByKeyword(@Param("keyword") String keyword, Pageable pageable);
	 
	 Page<OffLecture> findByCategory(String category, Pageable pageable);
	 
	 @Query("select o from OffLecture o where o.offLectureTeacher LIKE CONCAT('%',:offLectureTeacher,'%')")
	 Page<OffLecture> findByOffLectureTeacher(@Param("offLectureTeacher") String offLectureTeacher, Pageable pageable);
	 
	List<OffLecture> findTop5ByOrderByOffLectureDateDesc();
}
