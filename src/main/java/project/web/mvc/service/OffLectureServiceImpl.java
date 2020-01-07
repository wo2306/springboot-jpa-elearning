package project.web.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

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

	@Override
	public void offLecUpdate(OffLecture offLecture) {
		offLectureRepository.save(offLecture);
		
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

}
