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
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping("/{command}/{keyword}")
	 public String category(@PathVariable String command, @PathVariable String keyword, Model model) {
		List<Academy> list = new ArrayList<>();
		if (command.equals("all")) {
			list = academyService.selectByacademyeName(keyword);
		} else if (command.equals("academy")) {
			list = academyService.selectByacademyeName(keyword);
		} else if (command.equals("city")) {
			list = academyService.selectByCity(keyword);
		 }else if (command.equals("address")) {
				list = academyService.selectByAddress(keyword);
			 }
		 model.addAttribute("list", list);
	        model.addAttribute("command", command);
	        model.addAttribute("keyword", keyword);
	        return "admin/academy/adminAcademy";
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
	
	
	@RequestMapping("/adminAcademyRegister/insert")
	public ModelAndView academyInsert(Academy academy) {
		academyService.academyInsert(academy);
		List<Academy> list = academyService.selectAll();
		return new ModelAndView("redirect:/admin/academy/adminAcademy", "list", list);
	}
	
	@RequestMapping("/adminAcademyRegister/insert.do")
	public ModelAndView upload(String name, @RequestParam("files") MultipartFile[] files, HttpSession session, Academy academy) {
		academyService.academyInsert(academy);
		ModelAndView mv = new ModelAndView();
		try {
			String path1="";
			String path2="";

			for(int i=0;i<=files.length;i++) {
				if(i==0) {
					path1 = session.getServletContext().getRealPath("/resources/images/academy/");
					files[i].transferTo(new File(path1 + academy.getAcademyNo()+".jpg"));
				}if(i==1) {
					path2 = session.getServletContext().getRealPath("/resources/images/academy/academyDetail/");
					files[i].transferTo(new File(path2 + academy.getAcademyNo()+".jpg"));
				}
			}

			mv.setViewName("redirect:/admin/academy"); //WEB-INF/views//admin/academy.jsp이동
			
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
		System.out.println(academy.getAcademyNo());
		academyService.academyUpdate(academy);
		System.out.println(academy.getAcademyName());
		return "redirect:/admin/academy";
	}
	
	@DeleteMapping(value = "/delete")
	@ResponseBody
	public void academyDelete(Long academyNo, HttpServletRequest request) {
		new File(request.getSession().getServletContext().getRealPath("/resources/images/academy/") + academyNo + ".jpg").delete();
		new File(request.getSession().getServletContext().getRealPath("/resources/images/academy/academyDetail/") + academyNo + ".jpg").delete();
		academyService.academyDelete(academyNo);
		//return "redirect:list";
	}
}
