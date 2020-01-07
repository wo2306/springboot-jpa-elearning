package project.web.mvc.domain;

import javax.persistence.*;

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
	

}