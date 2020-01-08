//package project.web.mvc.service;
//
//import java.util.List;
//
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//import project.web.mvc.domain.Userdb;
//
//public interface UserdbService{
//
//	void insert(Userdb userdb);
//	void delete(Long userdbNo);
//	Userdb selectByUserdbEmail(String userdbEmail);
//	Userdb selectByUserdbNo(Long userdbNo);
//	boolean duplicatedByEmail(Userdb userdb) throws Exception;
//	PasswordEncoder passwordEncoder();
//}
