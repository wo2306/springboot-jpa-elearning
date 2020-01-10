package project.web.mvc.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import project.web.mvc.domain.OnLecture;

import java.util.List;

public interface OnLectureRepository extends CrudRepository<OnLecture, Long> {

    @Query("select o from OnLecture o where o.onLectureName like ?1")
    List<OnLecture> findByKeyword(String keyword);
}
