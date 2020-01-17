package project.web.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.Notice;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.NoticeRepository;

@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeRepository noticeRepo;
	
	@Override
	public Page<Notice> selectAll(int pagenum) {
		
		return noticeRepo.findAllByOrderByNoticeNoDesc(PageRequest.of(pagenum - 1, 9));
	}

	@Override
	public Notice selectByNoticeNo(Long noticeno) {
		Notice notice = noticeRepo.findById(noticeno).orElse(null);
		return notice;
	}

	@Override
	public void insert(Notice notice) {
		Notice selnotice = noticeRepo.findByNoticeNo(notice.getNoticeNo());
		if(selnotice == null){
//			Notice saveNotice = new Notice();
//			saveNotice.setNoticeTitle(notice.getNoticeTitle());
//			saveNotice.setNoticeContent(notice.getNoticeContent());
			//saveNotice.setNoticeRegdate(null);
			noticeRepo.save(notice);
		}else {
			selnotice.setNoticeTitle(notice.getNoticeTitle());
			selnotice.setNoticeContent(notice.getNoticeContent());
		}
		
	}

	@Override
	public void update(Notice notice) {
		Notice selnotice = noticeRepo.findByNoticeNo(notice.getNoticeNo());
		selnotice.setNoticeTitle(notice.getNoticeTitle());
		selnotice.setNoticeContent(notice.getNoticeContent());
	}
	
	public void delete(Long noticeNo) {
		Notice selnotice = noticeRepo.findByNoticeNo(noticeNo);
		noticeRepo.delete(selnotice);
	}

	@Override
	public Page<Notice> selectByKeyword(String keyword, int pageNum) {
		return noticeRepo.findByKeyword(keyword, PageRequest.of(pageNum - 1, 9));
	}
}
