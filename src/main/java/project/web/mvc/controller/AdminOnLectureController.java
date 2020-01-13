package project.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.OnLectureService;

@Controller
@RequestMapping("/admin/onLecture")
@RequiredArgsConstructor
public class AdminOnLectureController {
	
	
   private final OnLectureService onlectureService;
	   
   @RequestMapping("")
   public String main(int pageNum){
      onlectureService.selectAll(pageNum);
      return "admin/onLecture/adminOnLecture";
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
		onlectureService.insert(onLecture);
		
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


