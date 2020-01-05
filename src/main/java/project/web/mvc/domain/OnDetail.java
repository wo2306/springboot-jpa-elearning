package project.web.mvc.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class OnDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ON_DETAIL_SEQ_GENERATOR")
	@SequenceGenerator(
			name="ON_DETAIL_SEQ_GENERATOR", sequenceName = "ON_DETAIL_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "ON_DETAIL_NO")
    private int onDetailNo;

	@ManyToOne
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
    private OnLecture onLecture;

	@Column(nullable = false)
    private String onDetailUrl;

	@Column(nullable = false)
    private String onDetailName;

	@Column(nullable = false)
    private String onDetailPlaytime;

}