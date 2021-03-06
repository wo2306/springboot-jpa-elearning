package project.web.mvc.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Service;


@Service
public class MemberAuthenticationFailureHandler implements AuthenticationFailureHandler {
		@Override
		public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
				AuthenticationException exception) throws IOException, ServletException {
			System.out.println("MemberAuthenticationFailureHandler호출중*****");
			request.setAttribute("errorMessage", exception.getMessage());
			request.getRequestDispatcher("/WEB-INF/views/loginForm.jsp").forward(request, response);
	}
}
