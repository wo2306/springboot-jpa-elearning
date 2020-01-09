package project.web.mvc.service;

import org.springframework.security.crypto.password.PasswordEncoder;

import project.web.mvc.domain.Userdb;

public interface UserdbService{

	void insert(Userdb userdb);
	void delete(Long userdbNo);
	Userdb selectByUserdbEmail(String userdbEmail);
	Userdb selectByUserdbNo(Long userdbNo);
	boolean duplicatedByEmail(Userdb userdb);
	PasswordEncoder passwordEncoder();
}
