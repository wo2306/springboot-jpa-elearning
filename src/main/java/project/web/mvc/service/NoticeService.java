package project.web.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;

import project.web.mvc.domain.Notice;

public interface NoticeService {

	public Page<Notice> selectAll(int pagenum);
	
	public Notice selectByNoticeNo(Long noticeno);

	public void insert(Notice notice);
	
	public void update(Notice notice);

	public void delete(Long noticeNo);
}
