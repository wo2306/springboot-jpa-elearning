package project.web.mvc.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.Academy;
import project.web.mvc.domain.OffLecture;
import project.web.mvc.service.AcademyService;


@Controller
@RequestMapping("/admin/academy")
public class AdminAcademyController {
	
	@Autowired
	private AcademyService academyService;

	
	@RequestMapping("")
	public ModelAndView main() {
		List<Academy> list = academyService.selectAll();
		System.out.println(list);
		return new ModelAndView("admin/academy/adminAcademy", "list", list);
	}
	
	@RequestMapping("this")
	@ResponseBody
	public List<Academy> tablelist() {
		List<Academy> list = academyService.selectAll();
		System.out.println(list);
		return list;
	}
	
	@RequestMapping("/adminRegister")
	public String register() {
		//System.out.println("나와?");
		return "admin/academy/adminRegister";
	}
	
	@RequestMapping("/adminAcademyRegister/insert.do")
	public ModelAndView academyInsert(String name, MultipartFile file, HttpSession session, Academy academy) {
		academyService.academyInsert(academy);
		ModelAndView mv = new ModelAndView();
		try {
			//실제 root 경로를 가져오기
			String path = session.getServletContext().getRealPath("/WEB-INF/save");
			//첨부된 파일 이름 가져오기
			String fileName = file.getOriginalFilename();
			file.transferTo(new File(path +"/" + fileName)); //폴더에 저장완료
			
			//뷰쪽으로 전달될 데이터 설정
			mv.addObject("name", name);
			mv.addObject("fileName", fileName);
			mv.addObject("path", path);
			mv.addObject("fileSize", file.getSize());
			
			mv.setViewName("redirect:/admin/academy/adminAcademy"); //WEB-INF/views/uploadResult.jsp이동
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return mv;
	}

	@RequestMapping("adminUpdate/{academyNo}")
	public ModelAndView update(@PathVariable Long academyNo) {
		Academy academy = academyService.selectByAno(academyNo);
		return new ModelAndView("admin/academy/adminUpdate", "academy", academy);
	}
	
	@RequestMapping("/adminAcademyUpdate/update")
	public String academyUpdate(Academy academy) {
		academyService.academyUpdate(academy);
		return "redirect:/admin/academy";
	}
	
	@DeleteMapping(value = "/delete")
	@ResponseBody
	public void academyDelete(Long academyNo) {
		academyService.academyDelete(academyNo);
		//return "redirect:list";
	}
}
