package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.Notice;

public interface NoticeService {

	public List<Notice> selectAll();
	
	public Notice selectByNoticeNo(Long noticeno);

	public void insert(Notice notice);
}
