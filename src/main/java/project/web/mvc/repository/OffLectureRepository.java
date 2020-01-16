package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import project.web.mvc.domain.OffLecture;
import project.web.mvc.domain.OnLecture;

public interface OffLectureRepository extends PagingAndSortingRepository<OffLecture, Long> {

	OffLecture findByOffLectureNo(Long offLectureNo);
	Page<OffLecture> findByOrderByOffLectureNo(Pageable pageable);
	
	/*
	 * @Query("select o from OffLecture o where o.offLectureDate > sysdate")
	 * List<OffLecture> selectByDate();
	 */
	List<OffLecture> findByOrderByOffLectureDateDesc();
	/*
	 * @Query("select o from OffLecture o order by o.offLectureDate desc")
	 * List<OffLecture> selectByDate();
	 */
	
	/*
	 * @Query("select o from OffLecture o") List<OffLecture> selectByDate();
	 * List<OffLecture> findTop5ByOrderByOffLectureDateDesc();
	 */
	
	List<OffLecture> findTop5ByOrderByOffLectureDateDesc();
}
