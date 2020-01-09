package project.web.mvc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
public class ClassQuestion {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CLASS_QUESTION_SEQ_GENERATOR")
	@SequenceGenerator(
			name="CLASS_QUESTION_SEQ_GENERATOR", sequenceName = "CLASS_QUESTION_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "CLASS_QUESTION_NO")
    private Long classQuestionNo;

	@ManyToOne
	@JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
    private Userdb userdb;


	@Column(nullable = false)
    private String classQuestionTitle;

	@Column(nullable = false)
    private String classQuestionContent;

    @CreationTimestamp
    private Date classQuestionRegdate;


}