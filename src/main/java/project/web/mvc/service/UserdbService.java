package project.web.mvc.service;

import java.util.Optional;

import project.web.mvc.domain.Userdb;

public interface UserdbService {

	void insert(Userdb userdb);
	Userdb selectByUserdbEmail(String userdbEmail);
	Optional<Userdb> selectByUserdbNo(Long userdbNo);
}
