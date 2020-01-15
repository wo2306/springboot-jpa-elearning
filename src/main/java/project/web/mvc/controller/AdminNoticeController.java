package project.web.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	public ModelAndView main(Model model){
		System.out.println("notice 콘트롤러 진입");
		List<Notice> list = noticeService.selectAll();
		if (!list.isEmpty())
        	model.addAttribute("list", list);
		return new ModelAndView("admin/notice/adminNotice", "list", list);
	}
	
//	@RequestMapping("/read")
//	public ModelAndView detail(@PathVariable Long noticeNo){
//		System.out.println("들어옴");
//		Notice item = noticeService.selectByNoticeNo(noticeNo);
//		
//		return new ModelAndView("admin/notice/adminNoticeDetail", "item", item);
//	}
	
	@RequestMapping("/read")
	public String detail(@PathVariable Long noticeNo){
		Notice item = noticeService.selectByNoticeNo(noticeNo);
		
		return "admin/notice/adminNoticeDetail";
	}
	
	@RequestMapping("/insertForm")
	public String insertForm() {
		return "admin/notice/adminNoticeForm";
	}
	
	@RequestMapping("/insert")
	public String insert(Notice notice) {
		System.out.println(notice.getNoticeTitle());
		System.out.println(notice.getNoticeContent());
		noticeService.insert(notice);
		return "redirect:";
	}
}
