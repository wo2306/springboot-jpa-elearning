package project.web.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.OffLecture;
import project.web.mvc.repository.OffLectureRepository;

@Service
@Transactional
public class OffLectureServiceImpl implements OffLectureService {

	@Autowired
	private OffLectureRepository offLectureRepository;

	@Override
	public void offLecInsert(OffLecture offLecture){
		 offLectureRepository.save(offLecture);

	}
	
	@Override
	public void offLecUpdate(OffLecture inoffLecture) {
		OffLecture offLecture = offLectureRepository.findByOffLectureNo(inoffLecture.getOffLectureNo());
		offLecture.setCategory(inoffLecture.getCategory());
		offLecture.setOffDetail(inoffLecture.getOffDetail());
		offLecture.setOffLectureDate(inoffLecture.getOffLectureDate());
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
	
	@Override
	public OffLecture findByOffLectureNo(Long offLectureNo) {
		OffLecture result = offLectureRepository.findById(offLectureNo).orElse(null);
		return result;
	}

	@Override
	public Page<OffLecture> selectAll(int pageNum) {
		return offLectureRepository.findByOrderByOffLectureNo(PageRequest.of(pageNum - 1, 9));
	}

	@Override
	public List<OffLecture> selectByDate() {
		return offLectureRepository.selectByDate();
	}

	@Override
	public Page<OffLecture> findByoffLectureName(String keyword, Pageable pageable) {
		return offLectureRepository.findByoffLectureName(keyword, pageable);
	}

	@Override
	public Page<OffLecture> selectByKeyword(String keyword, int pageNum) {
		return offLectureRepository.findByKeyword(keyword, PageRequest.of(pageNum - 1, 9))	;
				}

	@Override
	public Page<OffLecture> selectByCategory(String category, int pageNum) {
		return offLectureRepository.findByCategory(category, PageRequest.of(pageNum - 1, 9));
	}

	@Override
	public Page<OffLecture> selectByTeacherName(String teacherName, int pageNum) {
		return offLectureRepository.findByOffLectureTeacher(teacherName, PageRequest.of(pageNum - 1, 9));
	}

	@Override
	public Page<OffLecture> selectByoffLectureName(String keyword, int pageNum) {
		return offLectureRepository.findByoffLectureName(keyword, PageRequest.of(pageNum - 1, 9));
	}
	
}
