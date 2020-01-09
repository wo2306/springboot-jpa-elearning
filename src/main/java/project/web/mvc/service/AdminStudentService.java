package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.Userdb;

public interface AdminStudentService {

	public List<Userdb> selectAll();
	
	public Userdb selectByUserdbNo();
}
