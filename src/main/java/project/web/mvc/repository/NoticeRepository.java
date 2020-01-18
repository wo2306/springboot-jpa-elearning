package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import project.web.mvc.domain.Notice;

public interface NoticeRepository extends PagingAndSortingRepository<Notice, Long> {


	Notice findByNoticeNo(Long noticeNo);

	Page<Notice> findAllByOrderByNoticeNoDesc(Pageable pageable);

	@Query("select no from Notice no where no.noticeTitle LIKE CONCAT('%',:keyword,'%')")
	Page<Notice> findByKeyword(@Param("keyword") String keyword, Pageable pageable);
	
}
