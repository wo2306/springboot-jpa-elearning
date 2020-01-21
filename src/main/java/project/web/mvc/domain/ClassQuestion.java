package project.web.mvc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.checkerframework.checker.units.qual.A;
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
public class ClassQuestion {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CLASS_QUESTION_SEQ_GENERATOR")
	@SequenceGenerator(
			name="CLASS_QUESTION_SEQ_GENERATOR", sequenceName = "CLASS_QUESTION_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "CLASS_QUESTION_NO")
    private Long classQuestionNo;

	@ManyToOne
	@OnDelete(action = OnDeleteAction.CASCADE)
	@JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
    private Userdb userdb;

	@ManyToOne
	@OnDelete(action = OnDeleteAction.CASCADE)
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
	private OnLecture onLecture;

	@Column(nullable = false)
    private String classQuestionTitle;

	@Column(nullable = false)
    private String classQuestionContent;

    @CreationTimestamp
    private Date classQuestionRegdate;

}