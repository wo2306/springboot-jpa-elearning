package project.web.mvc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.google.common.collect.Lists;

import project.web.mvc.domain.Academy;
import project.web.mvc.repository.AcademyRepository;

public class AcademyServiceImpl implements AcademyService {


	@Autowired
	private AcademyRepository academyRepository;
	
	@Override
	public void academyInsert(Academy academy) {
		Academy result = academyRepository.save(academy);
		
	}

	@Override
	public List<Academy> selectAll() {
		List<Academy> list = Lists.newArrayList(academyRepository.findAll());
		for(Academy academy : list) {
			System.out.println(academy);
		}
		return list;
	}

	@Override
	public void academyUpdate(Academy academy) {
		academyRepository.save(academy);
		
	}

	@Override
	public void academyDelete(int academyNo) {
		academyRepository.deleteById(academyNo);
		
	}

	@Override
	public Academy selectByAno(Long academyNo) {
		Academy academy = academyRepository.findById(academyNo.intValue()).orElse(null);
		return academy;
	}

}
