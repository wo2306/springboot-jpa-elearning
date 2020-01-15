package project.web.mvc.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import project.web.mvc.domain.OffLecture;
import project.web.mvc.service.OffLectureService;

@Controller
@RequestMapping("/admin/offLecture")
public class AdminOffLectureController {
	
	@Autowired
	private OffLectureService offLectureService;
	
	@RequestMapping("/list/{pageNum}")
	public String main(Model model, @PathVariable int pageNum) {
		List<OffLecture> list = new ArrayList<>();
		Page<OffLecture> page = offLectureService.selectAll(pageNum);
		System.out.println(list);
		page.iterator().forEachRemaining(list::add);
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		return "admin/offLecture/adminOffLecture";
	}
	
	@RequestMapping("/adminOffLectureRegister")
	public String register() {
		//System.out.println("나와?");
		return "admin/offLecture/adminOffLectureRegister";
	}
	
	@RequestMapping("/adminOffLectureRegister/insert")
	public ModelAndView offLectureInsert(OffLecture offLecture) {
		offLectureService.offLecInsert(offLecture);
		List<OffLecture> list = offLectureService.selectAll();
		System.out.println(list);
		return new ModelAndView("redirect:/admin/offLecture", "list", list);
	}
	
	@RequestMapping("this")
	@ResponseBody
	public List<OffLecture> tablelist(){
		List<OffLecture> list = offLectureService.selectAll();
		System.out.println(list);
		return list;
	}

	@RequestMapping("/offLecUpdate/{offLectureNo}")
	public ModelAndView update(@PathVariable Long offLectureNo) {
		OffLecture offLecture = offLectureService.selectByOffNo(offLectureNo);
		return new ModelAndView("admin/offLecture/adminOffLectureUpdate", "offLecture", offLecture);
	}


	@RequestMapping("offLecUpdate/update")
	public String offLecUpdate (OffLecture offLecture) {
		offLectureService.offLecUpdate(offLecture);
		return "redirect:/admin/offLecture";
	}
	
	@DeleteMapping(value = "/delete")
	@ResponseBody
	public void offLecDelete(Long offLectureNo) {
		offLectureService.offLecDelete(offLectureNo);
		//return "redirect:/admin/offLecture";
	}
	/**
	 * MultipartFile를 사용하려면
	 * MultipartResolver의 구현객체를 선언해야한다.(생성)
	 * 	:bean 설정문서
	 * */
	@RequestMapping("/adminOffLectureRegister/insert.do")
	public ModelAndView upload(String name, MultipartFile file, HttpSession session, OffLecture offLecture) {
		offLectureService.offLecInsert(offLecture);
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
			
			mv.setViewName("redirect:/admin/offLecture/list/1"); //WEB-INF/views/uploadResult.jsp이동
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return mv;
	}
	/**
	 * 
	 * */
	/*
	 * @RequestMapping("/upload2.do") public String upload2(UploadDTO dto,
	 * HttpSession session) { //뷰에서 그대로 사용가능
	 * 
	 * //실제 root 경로를 가져오기 String path =
	 * session.getServletContext().getRealPath("/WEB-INF/save");
	 * 
	 * String fileName = dto.getFile().getOriginalFilename(); try { //파일 폴더에 저장
	 * dto.getFile().transferTo(new File(path+"/"+fileName));
	 * 
	 * dto.setFileName(fileName); dto.setFileSize(dto.getFile().getSize());
	 * }catch(Exception e) { e.printStackTrace(); }
	 * 
	 * return "uploadResult"; }
	 */
	
}
