package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.PostRemove;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;
import oracle.jdbc.proxy.annotation.Post;
import project.web.mvc.domain.Notice;
import project.web.mvc.service.NoticeService;

@Controller
@RequestMapping("/admin/notice")
@RequiredArgsConstructor
public class AdminNoticeController {

	private final NoticeService noticeService;
	

	@RequestMapping("/list/{pageNum}")
	public String list(Model model, @PathVariable int pageNum){
		List<Notice> list = new ArrayList<>();
        Page<Notice> page = noticeService.selectAll(pageNum);
        page.iterator().forEachRemaining(list::add);
        model.addAttribute("list", list);
        model.addAttribute("page", page);
        return "admin/notice/adminNotice";
	}
	
	@RequestMapping("/read/{noticeNo}")
	public ModelAndView read(@PathVariable Long noticeNo){
		Notice item = noticeService.selectByNoticeNo(noticeNo);
		
		return new ModelAndView("admin/notice/adminNoticeDetail", "item", item);
	}
	
	@RequestMapping("/insertForm")
	public String insertForm() {
		return "admin/notice/adminNoticeInsertForm";
	}
	
	@RequestMapping("/insert")
	public String insert(Notice notice) {
		noticeService.insert(notice);
		return "redirect:/admin/notice/list/1";
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
		
		return "redirect:/admin/notice/list/1";
	}
	
	@DeleteMapping(value ="/delete")
    @ResponseBody
	public void delete(Long noticeNo) {
		noticeService.delete(noticeNo);
		System.out.println("삭제완료");
	}
	
	@RequestMapping("/{command}/{keyword}/{pageNum}")
	public String search(@PathVariable String command, @PathVariable String keyword, @PathVariable int pageNum, Model model) {
		
		List<Notice> list = new ArrayList<>();
		Page<Notice> page = null;
		if(command.equals("all")) {
			page = noticeService.selectByKeyword("", pageNum);
		}else {
			page = noticeService.selectByKeyword(keyword, pageNum);
		}
		page.iterator().forEachRemaining(list::add);
		model.addAttribute("list", list);
		model.addAttribute("command", command);
		model.addAttribute("keyword", keyword);
		model.addAttribute("page", page);
		return "admin/notice/adminNotice";
	}
}
