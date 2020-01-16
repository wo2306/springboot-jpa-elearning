package project.web.mvc.controller;

import java.util.List;

import javax.persistence.PostRemove;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import oracle.jdbc.proxy.annotation.Post;
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

	@RequestMapping("/list")
	@ResponseBody
	public List<Notice> list(){
		return noticeService.selectAll();
	}
	
	@RequestMapping("/read/{noticeNo}")
	public ModelAndView read(@PathVariable Long noticeNo){
		Notice item = noticeService.selectByNoticeNo(noticeNo);
		
		return new ModelAndView("admin/notice/adminNoticeDetail", "item", item);
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
	
	@RequestMapping("/detail")
	public ModelAndView detail(Long noticeNo) {
		Notice selectednotice = noticeService.selectByNoticeNo(noticeNo);
		return new ModelAndView("admin/notice/adminNoticeDetail", "item", selectednotice);
	}
	
	@RequestMapping("/updateForm/{noticeNo}")
	public ModelAndView updateForm(@PathVariable Long noticeNo) {
		Notice selectednotice = noticeService.selectByNoticeNo(noticeNo);
		return new ModelAndView("admin/notice/adminNoticeUpdateForm", "item", selectednotice);
	}
	
	@RequestMapping("/update")
	public String update(Notice notice) {
		System.out.println("이거나와아아아아"+notice.getNoticeNo());
		System.out.println(notice.getNoticeTitle());
		noticeService.insert(notice);
		
		return "redirect:";
	}
	
	@DeleteMapping(value ="/delete")
    @ResponseBody
	public void delete(Long noticeNo) {
		noticeService.delete(noticeNo);
		System.out.println("삭제완료");
	}
}
