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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

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
public class Roadmap {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ROADMAP_SEQ_GENERATOR")
	@SequenceGenerator(
			name="ROADMAP_SEQ_GENERATOR", sequenceName = "ROADMAP_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "ROADMAP_NO")
    private Long roadmapNo;
	
	@ManyToOne
	@OnDelete(action = OnDeleteAction.CASCADE)
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
	private OnLecture onLecture;
	
	@Column(nullable = false)
    private String roadmapName;

    private int roadmapPrice;

    @Column(nullable = false)
    private String roadmapContent;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    private Date roadmapRegdate;

}
