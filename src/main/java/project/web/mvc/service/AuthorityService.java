package project.web.mvc.service;

import java.util.Optional;

import project.web.mvc.domain.Authority;

public interface AuthorityService {

	Optional<Authority> selectByUserdbNo(Long userdbNo);
}
