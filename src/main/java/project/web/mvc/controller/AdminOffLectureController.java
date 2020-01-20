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

import project.web.mvc.domain.OffLecture;
import project.web.mvc.domain.OnLecture;
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
	

	@RequestMapping("/{command}/{keyword}/{pageNum}")
	 public String category(@PathVariable String command, @PathVariable String keyword, @PathVariable int pageNum, Model model) {
		List<OffLecture> list = new ArrayList<>();
		Page<OffLecture> page = null;
		if (command.equals("all")) {
			page = offLectureService.selectByCategory(keyword, pageNum);
		} else if (command.equals("category")) {
			page = offLectureService.selectByCategory(keyword, pageNum);
		} else if (command.equals("teacher")) {
			page = offLectureService.selectByTeacherName(keyword, pageNum);
		 } else if (command.equals("name")) {
			 page = offLectureService.selectByoffLectureName(keyword, pageNum);
		}
		page.iterator().forEachRemaining(list::add);
		 model.addAttribute("list", list);
	        model.addAttribute("command", command);
	        model.addAttribute("keyword", keyword);
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
		return "redirect:/admin/offLecture/list/1";
	}
	
	@DeleteMapping(value = "/delete")
	@ResponseBody
	public void offLecDelete(Long offLectureNo, HttpServletRequest request) {
		new File(request.getSession().getServletContext().getRealPath("/resources/images/offLecture/") + offLectureNo + ".png").delete();
		new File(request.getSession().getServletContext().getRealPath("/resources/images/offLecture/offLectureDetail/") + offLectureNo + ".png").delete();
		offLectureService.offLecDelete(offLectureNo);
		//return "redirect:/admin/offLecture";
	}
	/**
	 * MultipartFile를 사용하려면
	 * MultipartResolver의 구현객체를 선언해야한다.(생성)
	 * 	:bean 설정문서
	 * */
	@RequestMapping("/adminOffLectureRegister/insert.do")
	public ModelAndView upload(String name, @RequestParam("files") MultipartFile[] files, HttpSession session, OffLecture offLecture) {
		offLectureService.offLecInsert(offLecture);
		ModelAndView mv = new ModelAndView();
		try {
			String path1="";
			String path2="";
			for(int i=0;i<=files.length;i++) {
				if(i==0) {
					path1 = session.getServletContext().getRealPath("/resources/images/offLecture/");
					files[i].transferTo(new File(path1 + offLecture.getOffLectureNo()+".png"));
				}if(i==1) {
					path2 = session.getServletContext().getRealPath("/resources/images/offLecture/offLectureDetail/");
					files[i].transferTo(new File(path2 + offLecture.getOffLectureNo()+".png"));
				}
			}
			
			mv.setViewName("redirect:/admin/offLecture/list/1"); //WEB-INF/views//admin/offLecture/list/1.jsp이동
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return mv;
	}

	
}
