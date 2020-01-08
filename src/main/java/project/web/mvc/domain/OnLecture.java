package project.web.mvc.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

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
            name="ON_LECTURE_SEQ_GENERATOR", sequenceName = "ON_LECTURE_SEQ",
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

    @CreationTimestamp
    private Date onLectureRegdate;


    @Column(nullable = false)
    private String onLectureContent;

    @Column(nullable = true)
    private int onLectureDiscount;

    @Column(nullable = false)
    private String onLectureSummary;

    public OnLecture(int onLectureNo) {
        this.onLectureNo = (long)onLectureNo;
    }

    //
//    @OneToMany(mappedBy = "onLecture", fetch = FetchType.LAZY)
//    @JsonBackReference
//    private List<Review>reviews = new ArrayList<>();
//
//    @ManyToMany(mappedBy = "onLectures")
//    @JsonBackReference
//    private List<Roadmap>roadmaps = new ArrayList<>();
//
//    @OneToMany(mappedBy = "onLecture", fetch = FetchType.LAZY)
//    @JsonBackReference
//    private List<WishList> wishLists = new ArrayList<>();
//
//    @OneToMany(mappedBy = "onLecture", fetch = FetchType.EAGER)
//    @JsonBackReference
//    private List<Cart> carts = new ArrayList<>();

}