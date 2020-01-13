package project.web.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.google.common.collect.Lists;

import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.UserdbRepository;

@Service
public class AdminUserServiceImpl implements AdminUserService {

	@Autowired
	private UserdbRepository userdbRepo;
	
	@Override
	public List<Userdb> selectAll() {
		System.out.println("admin service 진입");
		List<Userdb> list = Lists.newArrayList(userdbRepo.findAll());
		for(Userdb userdb : list) {
	         System.out.println("userdb" + userdb);
	      }
		return list;
	}
	
	@Override
	public Userdb selectByUserdbNo(Long userdbNo) {
		return userdbRepo.findByUserdbNo(userdbNo);
	}
	
	
	@Transactional
	@Override
	public void updateUserdb(Userdb inuserdb) {
		
		Userdb userdb = userdbRepo.findByUserdbNo(inuserdb.getUserdbNo());
		userdb.setUserdbEmail(inuserdb.getUserdbEmail());
		userdb.setUserdbNickname(inuserdb.getUserdbNickname());
		
	}

}
