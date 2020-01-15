package project.web.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.Academy;
import project.web.mvc.repository.AcademyRepository;

@Service
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
	
	@Transactional
	@Override
	public void academyUpdate(Academy inacademy) {
		Academy academy = academyRepository.findByAcademyNo(inacademy.getAcademyNo());
		academy.setAcademyName(inacademy.getAcademyName());
		academy.setAcademyAddrDetail(inacademy.getAcademyAddrDetail());
		academy.setAcademyAddrCity(inacademy.getAcademyAddrCity());
	}

	
	@Override
	public Academy findByAcademyNo(Long academyNo) {
		Academy result = academyRepository.findById(academyNo).orElse(null);
		return result;
	}
	
	@Override
	public void academyDelete(Long academyNo) {
		academyRepository.deleteById(academyNo);
		
	}

	@Override
	public Academy selectByAno(Long academyNo) {
		Academy academy = academyRepository.findById(academyNo).orElse(null);
		return academy;
	}

}
