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
    @Column(name = "COUPON_CODE")
    private String couponCode;

    @Column(nullable = false)
    private String couponName;

    @Column(nullable = false)
    private int couponDiscount;

    @CreationTimestamp
    private Date couponDate;

    private int couponOriginalCount;

    private int couponRemainingCount;
}
