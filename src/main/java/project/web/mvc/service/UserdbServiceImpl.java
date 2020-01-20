package project.web.mvc.service;


import lombok.RequiredArgsConstructor;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.UserdbRepository;
import project.web.mvc.util.LoginCheck;

import javax.transaction.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
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
	public boolean delete(Long userdbNo) {
		userdbRepository.deleteById(userdbNo);
		return true;
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

	//닉네임변경
	@Override
	public void updateNickname(String userdbNickname) {
		Userdb userdb = LoginCheck.getUserdb();
		userdb.setUserdbNickname(userdbNickname);
		userdbRepository.save(userdb);
	}
	
	@Override
	public void updatePw(String userdbPassword) {
		Userdb userdb = LoginCheck.getUserdb();
		//비밀번호 인코딩
		String encodedPassword = passwordEncoder.encode(userdbPassword);
		userdb.setUserdbPassword(encodedPassword);
		userdbRepository.save(userdb);
	}

	//모든 유저 목록
	@Override
	public List<Userdb> selectAll() {
		List<Userdb> list = Lists.newArrayList(userdbRepository.findAll());
		return list;
	}

	//회원수정
	@Override
	public void updateUserdb(Userdb userdb) {
		Userdb user = userdbRepository.findByUserdbNo(userdb.getUserdbNo());
		user.setUserdbEmail(userdb.getUserdbEmail());
		user.setUserdbNickname(userdb.getUserdbNickname());
	}

	//키워드찾기?
	@Override
	public Page<Userdb> selectByKeyword(String keyword, int pageNum) {
		return userdbRepository.findByKeyword(keyword, PageRequest.of(pageNum - 1, 9));
	}

	@Override
	public Page<Userdb> selectAllByUserdbEmail(String userdbEmail, int pageNum) {
		return userdbRepository.findByUserdbEmailContainingIgnoreCase(userdbEmail, PageRequest.of(pageNum-1, 9));
	}

	@Override
	public Page<Userdb> selectAllByUserdbNickname(String userdbNickname, int pageNum) {
		return userdbRepository.findByUserdbNicknameContainingIgnoreCase(userdbNickname, PageRequest.of(pageNum-1, 9));
	}

	@Override
	public Page<Userdb> selectAllByUserdbNo(String userdbNo, int pageNum) {
		return userdbRepository.findByUserdbNoContainingIgnoreCase(Long.parseLong(userdbNo), PageRequest.of(pageNum-1, 9));
	}

//	@Override
//	public Page<Userdb> selectAllByKeyword(String keyword, int pageNum) {
//		return userdbRepository.findAllByKeyword(keyword, PageRequest.of(pageNum-1, 9));
//	}




}
