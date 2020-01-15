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

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ClassAnswer {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CLASS_ANSWER_SEQ_GENERATOR")
	@SequenceGenerator(
			name="CLASS_ANSWER_SEQ_GENERATOR", sequenceName = "CLASS_ANSWER_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "CLASS_ANSWER_NO")
    private Long classAnswerNo;

	@ManyToOne
	@JoinColumn(name = "CLASS_QUESTION_NO", referencedColumnName = "CLASS_QUESTION_NO", nullable = false)
    private ClassQuestion classQuestion;

	@ManyToOne
	@JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
    private Userdb userdb;

    @Column(nullable = false)
    private String classAnswerContent;

    @CreationTimestamp
    private Date classAnswerRegdate;

}