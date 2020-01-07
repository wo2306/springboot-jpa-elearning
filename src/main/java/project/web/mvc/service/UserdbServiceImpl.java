package project.web.mvc.service;


import java.util.Optional;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.UserdbRepository;

@Service
@RequiredArgsConstructor
public class UserdbServiceImpl implements UserdbService {

	private final UserdbRepository userdbRepository;
	
	//회원가입
	@Override
	public void insert(Userdb userdb) {
		userdbRepository.save(userdb);
	}

	//id에 해당하는 유저정보
	@Override
	public Userdb selectByUserdbEmail(String userdbEmail) {
		Userdb result =userdbRepository.findByUserdbEmail(userdbEmail);
		return result;
	}
	
	

	@Override
	public Optional<Userdb> selectByUserdbNo(Long userdbNo) {
		Optional<Userdb> result = userdbRepository.findById(userdbNo);
		return result;
	}
	
	

}
