package project.web.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.security.crypto.password.PasswordEncoder;

import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Userdb;

public interface UserdbService{

	PasswordEncoder passwordEncoder();
	void insert(Userdb userdb);
	boolean delete(Long userdbNo);
	void updateNickname(String userdbNickname);
	void updatePw(String userdbPassword);
	Userdb selectByUserdbEmail(String userdbEmail);
	Userdb selectByUserdbNo(Long userdbNo);
	boolean duplicatedEmailCheck(String userdbEmail);
	boolean duplicatedNicknameCheck(String userdbNickname);
	boolean checkPassword(String password);
	List<Userdb> selectAll();
	void updateUserdb(Userdb userdb);
	
	Page<Userdb> selectByKeyword(String keyword, int pageNum);
	
	Page<Userdb> selectAllByUserdbEmail(String userdbEmail, int pageNum);
	Page<Userdb> selectAllByUserdbNickname(String userdbNickname, int pageNum);
	
}
