package project.web.mvc.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
public class Notice {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "NOTICE_SEQ_GENERATOR")
	@SequenceGenerator(
			name="NOTICE_SEQ_GENERATOR", sequenceName = "NOTICE_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "NOTICE_NO")
    private int noticeNo;

	@Column(nullable = false)
    private String noticeTitle;

	@Column(nullable = false)
    private String noticeContent;

	@Column(nullable = false)
    private String noticeRegdate;

}