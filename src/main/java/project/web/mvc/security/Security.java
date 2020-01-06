//package project.web.mvc.security;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//import lombok.AllArgsConstructor;
//
//@Configuration
//@EnableWebSecurity
//@AllArgsConstructor
//public class Security extends WebSecurityConfigurerAdapter {
//   
//	@Bean
//	public PasswordEncoder passwordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
//
//	@Override
//	public void configure(WebSecurity web) throws Exception{
//		//static 디렉토리의 하위파일목록은 항상통과
//		web.ignoring().antMatchers("/ajax-load/**","/color-switcher/**",
//				"/css/**","/fonts/**","/fonts/**","/images/**",
//				"/includes/**","/js/**","/less/**","/video/**");
//	}
//	
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//    	http.authorizeRequests()
//    	//페이지 권한설정
//    		.antMatchers("/admin/**").hasRole("ADMIN")
//    		.antMatchers("/*/**").hasRole("USER")
//    		.antMatchers("/*").permitAll();
//    	
//    	
//
//    	//로그인페이지 재정의
//    	http.formLogin().loginPage("/login");
//    	
//    	//비회원이 회원영역 접근시 처리
//        http.exceptionHandling().accessDeniedPage("/accessDenied");
//        
//        //로그아웃처리
//        http.logout().logoutUrl("/logout").invalidateHttpSession(true);
//
//    }
//    
//    @Override
//    public void configure(AuthenticationManagerBuilder auth) throws Exception{
//
//    	//여기 수정해야함
//    }
//}