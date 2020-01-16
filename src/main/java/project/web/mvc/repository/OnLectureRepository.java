package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import project.web.mvc.domain.OnLecture;

import java.util.List;

public interface OnLectureRepository extends PagingAndSortingRepository<OnLecture, Long> {


    @Query("select o from OnLecture o where o.onLectureName LIKE CONCAT('%',:keyword,'%') or o.onLectureTeacher LIKE CONCAT('%',:keyword,'%')")
    Page<OnLecture> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    Page<OnLecture> findByOnLectureCategory(String onLectureCategory, Pageable pageable);

    List<OnLecture> findTop5ByOnLectureTeacher(String teacherName);

    List<OnLecture> findTop5ByOrderByOnLectureRegdateDesc();

    @Query("select count(o) from OnLecture o group by o.onLectureCategory order by o.onLectureCategory")
    List<Long> countCategory();

    Page<OnLecture> findByOrderByOnLectureNo(Pageable pageable);

    Page<OnLecture> findByOnLectureTeacher(String teacherName, Pageable pageable);

    @Query("select o from OnLecture o where o.onLectureName LIKE CONCAT('%',:keyword,'%')")
    Page<OnLecture> findByOnLectureName(String keyword, Pageable pageable);

}
