package project.web.mvc.security;

import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
@AllArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        //static 디렉토리의 하위파일목록은 항상통과
        web.ignoring().antMatchers("/ajax-load/**", "/color-switcher/**",
                "/css/**", "/fonts/**", "/fonts/**", "/images/**",
                "/includes/**", "/js/**", "/less/**", "/video/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
        // 페이지 권한 설정
//        .antMatchers("/admin/**").hasAuthority("ADMIN")
        .antMatchers("/myPage/**").authenticated()
        .antMatchers("/cart/**").authenticated()
        .antMatchers("/order/**").authenticated()
        .antMatchers("/qna/questionForm").authenticated()
        .antMatchers("/qna/read/**").authenticated()
        .anyRequest().permitAll()
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
	                .logoutSuccessUrl("/")
	                .invalidateHttpSession(true)
	                .deleteCookies("webid","_kawlt","_kadu","_karmt","_karmtea","_kawltea","TIARA","JSESSIONID","_ga","_gid")
    .and()
        // 403 예외처리 핸들링
    	.exceptionHandling().accessDeniedPage("/denied")
	.and()
		//post방식 허용
		.csrf().disable();
    }
}