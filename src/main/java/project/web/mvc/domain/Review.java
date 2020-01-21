package project.web.mvc.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Review {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "REVIEW_SEQ_GENERATOR")
	@SequenceGenerator(
			name="REVIEW_SEQ_GENERATOR", sequenceName = "REVIEW_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "REVIEW_NO")
    private Long reviewNo;

	@ManyToOne
	@JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
    private Userdb userdb;

	@ManyToOne
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
    private OnLecture onLecture;

	@Column(nullable = false)
    private String reviewContent;

    private int reviewScore;
    
    @CreationTimestamp
    private Date reviewRegdate;
}
