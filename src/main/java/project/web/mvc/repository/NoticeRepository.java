package project.web.mvc.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import project.web.mvc.domain.Notice;

public interface NoticeRepository extends PagingAndSortingRepository<Notice, Long> {


	Notice findByNoticeNo(Long noticeNo);

	
//	@Modifying
//	@Query("INSERT INTO NOTICE no (no.notice_no, no.notice_content , no.notice_title, no.notice_regdate)   VALUES (?=1, ?=2,?=3, null)")
//	void insertNotice(Long no, String content, String title);
}
