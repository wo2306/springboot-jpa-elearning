package project.web.mvc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.annotations.ColumnDefault;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class OffLecture {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "OFF_LECTURE_SEQ_GENERATOR")
	@SequenceGenerator(
			name="OFF_LECTURE_SEQ_GENERATOR", sequenceName = "OFF_LECTURE_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "OFF_LECTURE_NO")
    private Long offLectureNo;

	@ManyToOne
	@JoinColumn(name = "ACADEMY_NO", referencedColumnName = "ACADEMY_NO", nullable = false)
	private Academy academy;

	@Column(nullable = false)
    private String offLectureName;

	@Column(nullable = false)
    private String offLectureTeacher;
    
	@Column(nullable = false)
    private String category;

    private int offLectureSeat;

    @Column(nullable = true)
    private int offLectureReservedseat;
    
    @Column(nullable = false)
    private String offDetail;
    
    @Column(nullable = false, name="PRICE")
    @ColumnDefault("10000")
    private int price;

    //@CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(nullable = false)
    private Date offLectureDate;

    public OffLecture(Long offLectureNo) {
        this.offLectureNo = offLectureNo;
    }

}