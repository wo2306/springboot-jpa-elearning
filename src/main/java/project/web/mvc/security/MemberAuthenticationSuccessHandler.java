package project.web.mvc.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Service;

@Service
public class MemberAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
//	(60분)
	private static int TIME = 60*60; 
	@Override
		public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
				Authentication authentication) throws IOException, ServletException {
		System.out.println("MemberAuthenticationSuccessHandler호출중**************");
		request.getSession().setMaxInactiveInterval(TIME);
		super.onAuthenticationSuccess(request, response, authentication);
		}
}
