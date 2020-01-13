package project.web.mvc.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import project.web.mvc.service.LoginService;

public class MemberAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

//	(60분)
	private static int TIME = 60*60; 
	
//	@Autowired
//	private LoginService loginService;
	
	@Override
		public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
				Authentication authentication) throws IOException, ServletException {
		System.out.println("로그인성공햇다아아! 여기는 성공핸들러");	
		request.getSession().setMaxInactiveInterval(TIME);
		
		super.onAuthenticationSuccess(request, response, authentication);
		}

}
