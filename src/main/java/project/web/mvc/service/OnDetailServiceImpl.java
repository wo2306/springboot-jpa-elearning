package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import project.web.mvc.repository.OnDetailRepository;

@RequiredArgsConstructor
public class OnDetailServiceImpl implements OnDetailService {

	private final OnDetailRepository onDetailRepository;
	
}
