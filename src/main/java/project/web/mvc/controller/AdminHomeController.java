package project.web.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.UserdbService;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminHomeController {
	
	private final UserdbService userdbService;
	private final AuthorityService authorityService;
	
	
   @RequestMapping("")
   public String main() {
      System.out.println("어드민컨트롤러호출");
      return "admin/adminIndex";
   }
   


}