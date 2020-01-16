package project.web.mvc.service;

import org.springframework.security.crypto.password.PasswordEncoder;

import project.web.mvc.domain.Userdb;

public interface UserdbService{

	void insert(Userdb userdb);
	void delete(Long userdbNo);
	Userdb selectByUserdbEmail(String userdbEmail);
	Userdb selectByUserdbNo(Long userdbNo);
	PasswordEncoder passwordEncoder();
	boolean duplicatedEmailCheck(String userdbEmail);
	boolean duplicatedNicknameCheck(String userdbNickname);
	boolean checkPassword(String password);
	void updateNickname(String userdbNickname);
	void updatePw(String userdbPassword);
}
