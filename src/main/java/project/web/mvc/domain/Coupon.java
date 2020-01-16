package project.web.mvc.domain;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.util.Date;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Coupon {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "COUPON_SEQ_GENERATOR")
    @SequenceGenerator(
            name="COUPON_SEQ_GENERATOR", sequenceName = "COUPON_SEQ",
            initialValue = 1, allocationSize = 50)
    @Column(name = "COUPON_NO")
    private Long couponNo;

    @Column(nullable = false)
    private String couponName;

    @Column(nullable = false)
    private int couponDiscount;

    private Date couponDate;
}
