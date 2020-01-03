package project.web.mvc.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class OnLecture {

	@Id
    private int onLectureNo;

    private String onLectureName;

    private String onLectureTeacher;
    
    private String category;

    private int onLecturePrice;

    private String onLectureContent;

    private int onLectureDiscount;

    private String onLectureSummary;

    @CreationTimestamp
    private Date onLectureRegdate;
}