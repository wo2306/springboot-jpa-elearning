package project.web.mvc.security;

import org.mortbay.log.Log;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import lombok.AllArgsConstructor;
import project.web.mvc.service.UserdbService;

@Configuration
@EnableWebSecurity
@AllArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter {
   
	private UserdbService service;
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	public void configure(WebSecurity web) throws Exception{
		//static 디렉토리의 하위파일목록은 항상통과
		web.ignoring().antMatchers("/ajax-load/**","/color-switcher/**",
				"/css/**","/fonts/**","/fonts/**","/images/**",
				"/includes/**","/js/**","/less/**","/video/**");
	}
	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
        // 페이지 권한 설정
//        .antMatchers("/admin/**").hasRole("ADMIN")
        .antMatchers("/myPage/*").authenticated()
        .antMatchers("/cart/*").authenticated()
        .anyRequest().permitAll()
//        .antMatchers("/*/*/*/*/**").authenticated()
//        .antMatchers("/roadmap/*/**").authenticated()
//        .antMatchers("/onLecture/*/*/*/**").authenticated()
//        .antMatchers("/offLecutre/*/**").authenticated()
//        .antMatchers("/academy/*/**").authenticated()
//        .antMatchers("/notice/*/**").authenticated()
//        .antMatchers("/community/*/**").authenticated()
//        .antMatchers("/login/*/**").authenticated()
//        .antMatchers("/signUpForm/*/**").authenticated()
//        .antMatchers("/cart/*").authenticated()
    .and() // 로그인 설정
    	.formLogin()
        .loginPage("/login")
        .loginProcessingUrl("/loginCheck")
        .defaultSuccessUrl("/login/result")
        .usernameParameter("id")
        .permitAll()
    .and() // 로그아웃 설정
    	.logout()
    	.logoutUrl("/logout")
//        .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
    	.logoutSuccessUrl("/")
//        .deleteCookies(cookieNamesToClear)
        .invalidateHttpSession(true)
    .and()
        // 403 예외처리 핸들링
    	.exceptionHandling().accessDeniedPage("/denied");
        
        //post방식 허용
        http.csrf().disable();

    }
    
    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception{
//    	auth.userDetailsService(service).passwordEncoder(passwordEncoder());
    	//인메모리에 admin 저장
    	auth.inMemoryAuthentication()
    	.withUser("admin")
    	.password("{noop}1234")
    	.roles("ADMIN");
    	
    }
    


    
}