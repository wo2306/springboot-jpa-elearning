package project.web.mvc.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
public class Notice {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "NOTICE_SEQ_GENERATOR")
	@SequenceGenerator(
			name="NOTICE_SEQ_GENERATOR", sequenceName = "NOTICE_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "NOTICE_NO")
    private Long noticeNo;

	@Column(nullable = false)
    private String noticeTitle;

	@Column(nullable = false)
    private String noticeContent;

	@CreationTimestamp
    private Date noticeRegdate;

}