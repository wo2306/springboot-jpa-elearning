package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import project.web.mvc.domain.OnDetail;
import project.web.mvc.repository.OnDetailRepository;

@Service
@RequiredArgsConstructor
public class OnDetailServiceImpl implements OnDetailService {
	private final OnDetailRepository onDetailRepository;

	@Override
	public void insert(OnDetail onDetail) {
		onDetailRepository.save(onDetail);
	}
}
