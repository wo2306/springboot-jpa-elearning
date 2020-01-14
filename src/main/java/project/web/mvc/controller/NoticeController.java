package project.web.mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
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
	
	@RequestMapping("")
	public ModelAndView main() {
		List<Notice> list = noticeService.selectAll();
		return new ModelAndView("notice/list", "list", list);
	}
}
