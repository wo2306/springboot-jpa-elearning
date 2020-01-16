package project.web.mvc.domain;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

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
    private Long onDetailNo;

	@ManyToOne
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
//	@JsonManagedReference
	private OnLecture onLecture;


	@Column(nullable = false)
    private String onDetailUrl;

	@Column(nullable = false)
    private String onDetailName;

	@Column(nullable = false)
    private String onDetailPlaytime;





}