package project.web.mvc.service;

import com.google.common.collect.Lists;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import project.web.mvc.domain.Academy;
import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.repository.OnDetailRepository;
import project.web.mvc.repository.OnLectureRepository;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class OnLectureServiceImpl implements OnLectureService {
    private final OnLectureRepository onLectureRepository;
    private final OnDetailRepository onDetailRepository;


    @Override
    public void insert(OnLecture onLecture) {
        OnLecture result = onLectureRepository.save(onLecture);
    }


    @Override
    public Page<OnLecture> selectByTeacherName(String keyword, int pageNum) {
        return onLectureRepository.findByOnLectureTeacher(keyword, PageRequest.of(pageNum - 1, 9));
    }

    @Override
    public Page<OnLecture> selectByonLectureName(String keyword, int pageNum) {
        return onLectureRepository.findByOnLectureName(keyword, PageRequest.of(pageNum - 1, 9));
    }

    @Override
    public List<Long> countCategory() {
        return onLectureRepository.countCategory();
    }

    @Override
    public Page<OnLecture> selectAll(int pageNum) {
        return onLectureRepository.findByOrderByOnLectureNo(PageRequest.of(pageNum - 1, 9));
    }

    @Override
    public void delete(Long onLectureNo) {
        onLectureRepository.deleteById(onLectureNo);

    }

    @Override
    public void update(OnLecture onLecture) {
        onLectureRepository.save(onLecture);

    }


    @Override
    public List<OnDetail> selectById(Long onLectureNo) {
        List<OnDetail> list = new ArrayList<>();
        onDetailRepository.findByOnLectureOnLectureNo(onLectureNo).iterator().forEachRemaining(list::add);
        return list;
    }



    @Override
    public OnLecture selectOnLectureById(Long onLectureNo) {
        return onLectureRepository.findById(onLectureNo).orElse(null);
    }

    @Override
    public OnDetail selectOnDetailById(Long onDetailNo) {
        return onDetailRepository.findById(onDetailNo).orElse(null);
    }

    @Override
    public List<OnLecture> selectByTeacher(String teacherName) {
        return onLectureRepository.findTop5ByOnLectureTeacher(teacherName);
    }

    @Override
    public Page<OnLecture> selectByCategory(String category, int pageNum) {
        return onLectureRepository.findByOnLectureCategory(category, PageRequest.of(pageNum - 1, 9));
    }

    @Override
    public Page<OnLecture> selectByKeyword(String keyword, int pageNum) {
        return onLectureRepository.findByKeyword(keyword, PageRequest.of(pageNum - 1, 9));
    }

    @Override
    public List<OnLecture> selectLatest() {
        return onLectureRepository.findTop5ByOrderByOnLectureRegdateDesc();
    }


	@Override
	public List<OnLecture> selectByCate(String cate) {
		List<OnLecture> list = Lists.newArrayList(onLectureRepository.findAll());
		return list;
	}
}


