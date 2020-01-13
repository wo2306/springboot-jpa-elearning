package project.web.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.Academy;
import project.web.mvc.domain.OffLecture;
import project.web.mvc.repository.OffLectureRepository;

@Service
public class OffLectureServiceImpl implements OffLectureService {
	
	@Autowired
	private OffLectureRepository offLectureRepository;

	@Override
	public void offLecInsert(OffLecture offLecture) {
		OffLecture result = offLectureRepository.save(offLecture);
		
	}
	
	@Transactional
	@Override
	public void offLecUpdate(OffLecture inoffLecture) {
		OffLecture offLecture = offLectureRepository.findByOffLectureNo(inoffLecture.getOffLectureNo());
		offLecture.setCategory(inoffLecture.getCategory());
		offLecture.setOffDetail(inoffLecture.getOffDetail());
		//offLecture.setOffLectureDate(inoffLecture.getOffLectureDate());
		offLecture.setOffLectureName(inoffLecture.getOffLectureName());
		offLecture.setOffLectureSeat(inoffLecture.getOffLectureSeat());
		offLecture.setOffLectureTeacher(inoffLecture.getOffLectureTeacher());
		
	}

	@Override
	public void offLecDelete(Long offLectureNo) {
		offLectureRepository.deleteById(offLectureNo);
		
	}

	@Override
	public List<OffLecture> selectAll() {
		List<OffLecture> list = Lists.newArrayList(offLectureRepository.findAll());
		System.out.println(list);
		for(OffLecture offLecture: list) {
			System.out.println(offLecture);
		}
		return list;
	}

	@Override
	public OffLecture selectByOffNo(Long offLectureNo) {
		OffLecture offLecture = offLectureRepository.findById(offLectureNo).orElse(null);
		return offLecture;
	}
	
	@Transactional
	@Override
	public OffLecture findByOffLectureNo(Long offLectureNo) {
		OffLecture result = offLectureRepository.findById(offLectureNo).orElse(null);
		return result;
	}

}
