package project.web.mvc.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import project.web.mvc.domain.Notice;

public interface NoticeRepository extends PagingAndSortingRepository<Notice, Long> {


	Notice findByNoticeNo(Long noticeNo);
	
//	@Modifying
//	@Query("insert notice_no, notice_title , notice_content, notice_regdate into notice no "
//			+ "values())
}
