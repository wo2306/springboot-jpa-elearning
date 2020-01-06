package project.web.mvc.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
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
public class Academy {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ACADEMY_SEQ_GENERATOR")
	@SequenceGenerator(
			name="ACADEMY_SEQ_GENERATOR", sequenceName = "ACADEMY_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "ACADEMY_NO")
    private Long academyNo;

	@Column(nullable = false, unique = true)
    private String academyName;

	@Column(nullable = false)
    private String academyAddrCity;

	@Column(nullable = false)
    private String academyAddrDetail;
	
	@OneToOne(mappedBy = "academy")
	private OffLecture offLecture;

}