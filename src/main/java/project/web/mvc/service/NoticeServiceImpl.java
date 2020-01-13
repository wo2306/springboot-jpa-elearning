package project.web.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.Notice;
import project.web.mvc.repository.NoticeRepository;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeRepository noticeRepo;
	
	@Override
	public List<Notice> selectAll() {
		List<Notice> list = Lists.newArrayList(noticeRepo.findAll());
		System.out.println("list     : " + list);
		for(Notice no : list) {
	         System.out.println("no" + no);
	      }
	
		return list;
	}

}
