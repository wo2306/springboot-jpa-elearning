package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.Authority;

public interface AuthorityService {

	List<Authority> selectByUserdbNo(Long userdbNo);
}
