package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.Notice;
import project.web.mvc.service.NoticeService;

@Controller
@RequestMapping("/admin/notice")
public class AdminNoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("")
	public ModelAndView main(){
		System.out.println("notice 콘트롤러 진입");
		List<Notice> list = noticeService.selectAll();
		return new ModelAndView("admin/notice/adminNotice", "list", list);
	}
}
