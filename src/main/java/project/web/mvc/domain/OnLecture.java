package project.web.mvc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString(exclude = {"onDetails","reviews","roadmaps","wishList","cart"})
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
    
    @OneToMany(mappedBy = "onLecture")
    private List<OnDetail>onDetails = new ArrayList<>();
    
    @OneToMany(mappedBy = "onLecture")
    private List<Review>reviews = new ArrayList<>();
    
    @ManyToMany(mappedBy = "onLectures")
    private List<Roadmap>roadmaps = new ArrayList<>();

    @OneToOne(mappedBy = "onLecture")
    private WishList wishList;
    
    @OneToOne(mappedBy = "onLecture")
    private Cart cart;
}