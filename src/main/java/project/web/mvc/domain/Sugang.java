package project.web.mvc.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.util.Date;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Sugang {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SUGANG_SEQ_GENERATOR")
    @SequenceGenerator(
            name = "SUGANG_SEQ_GENERATOR", sequenceName = "SUGANG_SEQ",
            initialValue = 1, allocationSize = 50)
    private Long sugangNo;

    @ManyToOne
    @JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
    private Userdb userdb;

    @UpdateTimestamp
    private Date sugangDate;

    @Column
    private String sugangState;
    //수강완료

    private Long onDetailNo;
    private Long onLectureNo;
}
