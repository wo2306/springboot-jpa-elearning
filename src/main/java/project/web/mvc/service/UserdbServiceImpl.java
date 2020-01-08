package project.web.mvc.service;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Authority;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.UserdbRepository;
import project.web.mvc.security.UserCustom;

@Service
@RequiredArgsConstructor
public class UserdbServiceImpl implements UserdbService {

	private final UserdbRepository userdbRepository;
	private final AuthorityService authorityService;
	private  BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@Override
	public PasswordEncoder passwordEncoder() {
		return this.passwordEncoder();
	}
	
	//UserdbEmail에 따른 User정보조회
	@Override
	public Userdb selectByUserdbEmail(String userdbEmail) {
		Userdb result =userdbRepository.findByUserdbEmail(userdbEmail);
		return result;
	}

	//UserdbNo에 따른 User정보조회
	@Override
	public Userdb selectByUserdbNo(Long userdbNo) {
		Userdb result = userdbRepository.findById(userdbNo).orElse(null);
		return result;
	}
	
	//아이디중복체크
	@Override
	public boolean duplicatedByEmail(Userdb userdb){
		String userdbEmail = userdb.getUserdbEmail();
		Userdb user = selectByUserdbEmail(userdbEmail);
		if(user!=null) {
			return false;
		}
		return true;
	}

	//회원가입
	@Override
	public void insert(Userdb userdb) {
		if(duplicatedByEmail(userdb)) {
		//비밀번호 인코딩
		String password = userdb.getUserdbPassword();
		String encodedPassword = passwordEncoder.encode(password);
		userdb.setUserdbPassword(encodedPassword);
		
		//회원가입
		userdbRepository.save(userdb);
		}
	}

	//회원탈퇴
	@Override
	public void delete(Long userdbNo) {
		userdbRepository.deleteById(userdbNo);
	}


}
