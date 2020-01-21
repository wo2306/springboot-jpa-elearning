package project.web.mvc.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString(exclude = {"onDetails", "reviews", "roadmaps", "wishList", "cart"})
public class OnLecture {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ON_LECTURE_SEQ_GENERATOR")
    @SequenceGenerator(
            name = "ON_LECTURE_SEQ_GENERATOR", sequenceName = "ON_LECTURE_SEQ",
            initialValue = 1, allocationSize = 50)
    @Column(name = "ON_LECTURE_NO")
    private Long onLectureNo;

    @Column(nullable = false)
    private String onLectureName;

    @Column(nullable = false)
    private String onLectureCategory;

    @Column(nullable = false)
    private String onLectureTeacher;

    private int onLecturePrice;

    @UpdateTimestamp
    private Date onLectureRegdate;


    @Column(nullable = false)
    private String onLectureContent;

    @Column(nullable = true)
    private int onLectureDiscount;

    @Column(nullable = false)
    private String onLectureSummary;

    public OnLecture(Long onLectureNo) {
        this.onLectureNo = onLectureNo;
    }

}