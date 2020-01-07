package project.web.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.web.mvc.domain.Authority;
import project.web.mvc.repository.AuthorityRepository;

@Service
public class AuthorityServiceImpl implements AuthorityService{

	@Autowired
	private AuthorityRepository authorityRepository;
	
	@Override
	public List<Authority> selectByUserdbNo(Long userdbNo) {
		List<Authority>list = authorityRepository.findByUserdbUserdbNo(userdbNo);
		return list;
	}

}
