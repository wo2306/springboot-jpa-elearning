package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.OnLectureService;

@Controller
@RequestMapping("/admin/onLecture")
public class AdminOnLectureController {
	
	@Autowired
	private OnLectureService onLectureService;
	
    @RequestMapping("list/{pageNUm}")
    public String list(Model model, @PathVariable int pageNum) {
        List<OnLecture> list = new ArrayList<>();
        Page<OnLecture> page = onLectureService.selectAll(pageNum);
        page.iterator().forEachRemaining(list::add);
        model.addAttribute("list", list);
        model.addAttribute("page", page);
        return "admin/onLecture/list";
    }
	
	
	@RequestMapping("")
	public String main() {
		System.out.println("어드민 온렉쳐 컨트롤러");
		return "";
	}

	@RequestMapping("/insertOnLecture")
	public String insertOnLecture() {
		System.out.println("어드민 온렉쳐 컨트롤러");
		return"/admin/onLecture/insertOnLecture";
	}
	
	@Transactional
	@RequestMapping("/insert")
	public String insert(HttpServletRequest request) {
		
		System.out.println("온렉쳐서비스****인설트");
		
		//온렉쳐 인설트
		OnLecture onLecture = new OnLecture();
		onLecture.setOnLectureName(request.getParameter("onLectureName"));
		onLecture.setOnLectureCategory(request.getParameter("onLectureCategory"));
		onLecture.setOnLectureTeacher(request.getParameter("onLectureTeacher"));
		onLecture.setOnLecturePrice(Integer.parseInt(request.getParameter("onLecturePrice")));
		onLecture.setOnLectureContent(request.getParameter("onLectureContent"));
		onLecture.setOnLectureSummary(request.getParameter("onLectureSummary"));
		onLectureService.insert(onLecture);
		
		//온디테일 리스트 개수
//		List<String>onDetailNameList = new ArrayList<String>();
//		onDetailNameList = request.getParameter("onDetailName");
		

		//온디테일 인설트
		OnDetail onDetail = new OnDetail();
		onDetail.setOnDetailName(request.getParameter("onDetailName"));
		onDetail.setOnDetailUrl("onDetailUrl");
		onDetail.setOnLecture(onLecture);
	        
	        
		
		
		return"/admin/onLecture/insert";
	}
	
}


