package project.web.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.google.common.collect.Lists;

import project.web.mvc.domain.OnLecture;
import project.web.mvc.repository.OnLectureRepository;

public class OnLectureServiceImpl implements OnLectureService {

	private OnLectureRepository onLectureRepository;
	
	public OnLectureServiceImpl() {
		System.out.println("온렉쳐IMPL생성시 : "+onLectureRepository);
	}
	
	@Override
	public void insert(OnLecture onLecture) {
		onLectureRepository.save(onLecture);
	}


	@Override
	public List<OnLecture> selectAll() {
		 List<OnLecture> list = Lists.newArrayList(onLectureRepository.findAll());
		System.out.println("집중!! 서비스 결과나왓다!!!"+list);
		return list;
	}

}
