package project.web.mvc.service;

import org.springframework.data.domain.Page;
import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;

import java.util.List;

public interface OnLectureService {

    void insert(OnLecture onLecture);

    void delete(Long onLectureNo);

    void update(OnLecture onLecture);

    Page<OnLecture> selectAll(int pageNum);

    List<OnDetail> selectById(Long onLectureNo);

    OnLecture selectOnLectureById(Long onLectureNo);

    OnDetail selectOnDetailById(Long onDetailNo);

    Page<OnLecture> selectByKeyword(String keyword, int pageNum);

    List<OnLecture> selectByTeacher(String teacherName);

    Page<OnLecture> selectByCategory(String category, int pageNum);

    List<OnLecture> selectLatest();

    List<Long> countCategory();

    Page<OnLecture> selectByTeacherName(String keyword, int pageNum);

    Page<OnLecture> selectByonLectureName(String keyword, int pageNum);
    
    //
    List<OnLecture> selectByCate(String cate);
}
