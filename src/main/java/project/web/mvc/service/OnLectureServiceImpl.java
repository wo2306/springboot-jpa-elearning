package project.web.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.OnLecture;
import project.web.mvc.repository.OnDetailRepository;
import project.web.mvc.repository.OnLectureRepository;

@Service
public class OnLectureServiceImpl implements OnLectureService {

	@Autowired
	private OnLectureRepository onLectureRepository;
	
	@Autowired
	private OnDetailRepository onDetailRepository;
	
	@Override
	public void insert(OnLecture onLecture) {
		System.out.println("온렉쳐IMPL 인설트실행");
		
		OnLecture result = onLectureRepository.save(onLecture);
		System.out.println("인설트 서비스결과"+result);
	}


	@Override
	public List<OnLecture> selectAll() {
		 List<OnLecture> list = Lists.newArrayList(onLectureRepository.findAll());
		 
		 System.out.println("집중!! 서비스 결과나왓다!!!");
		 for(OnLecture o:list) {
			 System.out.println(o);
		 }
		return list;
	}

	@Override
	public void delete(int onLectureNo) {
		System.out.println("딜리트실행");
		onLectureRepository.deleteById(onLectureNo);
	
	}

	@Override
	public void update(OnLecture onLecture) {
		System.out.println("업데이트서비스실행");
		onLectureRepository.save(onLecture);
		
	}
	
	public void selectById(Integer onLectureNo) {
		onLectureRepository.findById(onLectureNo);
		//업데이트 덜함
	}

}
