package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Notice;
import project.web.mvc.service.NoticeService;

@Controller
@RequestMapping("/notice")
@RequiredArgsConstructor
public class NoticeController {

	private final NoticeService noticeService;
	
	@RequestMapping("/list/{pageNum}")
	public String main(Model model, @PathVariable int pageNum) {
		 List<Notice> list = new ArrayList<>();
	        Page<Notice> page = noticeService.selectAll(pageNum);
	        page.iterator().forEachRemaining(list::add);
	        model.addAttribute("list", list);
	        model.addAttribute("page", page);
	        return "notice/list";
	}
	
	@RequestMapping("/detail/{noticeNo}")
	public ModelAndView detail(@PathVariable Long noticeNo){
		System.out.println("들어옴");
		Notice item = noticeService.selectByNoticeNo(noticeNo);
		
		return new ModelAndView("notice/read", "item", item);
	}
}
