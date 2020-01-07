package project.web.mvc.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.web.mvc.domain.Authority;
import project.web.mvc.repository.AuthorityRepository;

@Service
public class AuthorityServiceImpl implements AuthorityService{

	@Autowired
	private AuthorityRepository authorityRepository;
	
	@Override
	public Optional<Authority> selectByUserdbNo(Long userdbNo) {
		Optional<Authority>list =  authorityRepository.findById(userdbNo);
		return list;
	}

}
