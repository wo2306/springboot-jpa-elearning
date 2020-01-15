package project.web.mvc.service;


import lombok.RequiredArgsConstructor;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.UserdbRepository;
import project.web.mvc.util.LoginCheck;

@Service
@RequiredArgsConstructor
public class UserdbServiceImpl implements UserdbService {

	private final UserdbRepository userdbRepository;
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

	//회원가입
	@Override
	public void insert(Userdb userdb) {
		//비밀번호 인코딩
		String encodedPassword = passwordEncoder.encode(userdb.getUserdbPassword());
		userdb.setUserdbPassword(encodedPassword);
		//회원가입
		userdbRepository.save(userdb);
	}

	//회원탈퇴
	@Override
	public void delete(Long userdbNo) {
		userdbRepository.deleteById(userdbNo);
	}

	//idCheck
	//true : 중복, false : 중복아님
	@Override
	public boolean duplicatedEmailCheck(String userdbEmail) {
		Userdb user = userdbRepository.findByUserdbEmail(userdbEmail);
		boolean result = (user==null)? false : true;
		return result;
	}

	//nickname 중복체크
	//true : 중복, false : 중복아님
	@Override
	public boolean duplicatedNicknameCheck(String userdbNickname) {
		List<Userdb> list = userdbRepository.findByUserdbNickname(userdbNickname);
		boolean result = (list.isEmpty())? false : true;
		return result;
	}

	//입력한 pw와 db pw비교
	//true: 비밀번호 일치, false: 비밀번호 비일치
	@Override
	public boolean checkPassword(String password) {
		String userdbPassword = LoginCheck.getUserdb().getUserdbPassword();
		boolean result = (passwordEncoder.matches(password, userdbPassword))? true : false;
		return result;
	}

	@Override
	public void updateNickname(String userdbNickname) {
		Userdb userdb = LoginCheck.getUserdb();
		userdb.setUserdbNickname(userdbNickname);
		userdbRepository.save(userdb);
	}



}
