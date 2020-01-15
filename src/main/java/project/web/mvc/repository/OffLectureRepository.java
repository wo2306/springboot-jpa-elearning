package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import project.web.mvc.domain.OffLecture;
import project.web.mvc.domain.OnLecture;

public interface OffLectureRepository extends PagingAndSortingRepository<OffLecture, Long> {

	OffLecture findByOffLectureNo(Long offLectureNo);
	Page<OffLecture> findByOrderByOffLectureNo(Pageable pageable);
}
