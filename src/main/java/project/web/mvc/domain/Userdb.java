package project.web.mvc.domain;


import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Setter
@Getter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Userdb {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "USERDB_SEQ_GENERATOR")
    @SequenceGenerator(
            name = "USERDB_SEQ_GENERATOR", sequenceName = "USERDB_SEQ",
            initialValue = 1, allocationSize = 50)
    @Column(name = "USERDB_NO")
    private Long userdbNo;

    @Column(nullable = false, unique = true)
    private String userdbEmail;

    @Column(nullable = false)
    private String userdbPassword;

    @Column(nullable = false, unique = true)
    private String userdbNickname;

    @Column(nullable = false)
    private Long authority;

    @CreationTimestamp
    private Date regDate;

    public Userdb(Long userdbNo) {
        this.userdbNo = userdbNo;
    }

    //2 = kakao, 1 = Member, 0 = admin
    @PrePersist
    public void insertAuthority() {
        this.authority = this.authority == null ? 1 : this.authority;
    }

    @OneToMany(mappedBy = "userdb")
    @JsonBackReference
    private List<Authority> Authorities = new ArrayList<>();

    @OneToMany(mappedBy = "userdb")
    @JsonBackReference
    private List<ClassAnswer> classAnwsers = new ArrayList<>();

    @OneToMany(mappedBy = "userdb")
    @JsonBackReference
    private List<Review> reviews = new ArrayList<>();

    @OneToMany(mappedBy = "userdb")
    @JsonBackReference
    private List<OffOrder> offOrders = new ArrayList<>();

    @OneToMany(mappedBy = "userdb")
    @JsonBackReference
    private List<OnOrder> onOrders = new ArrayList<>();

    @OneToMany(mappedBy = "userdb", fetch = FetchType.EAGER)
    @JsonBackReference
    private List<Cart> carts = new ArrayList<>();

    @OneToMany(mappedBy = "userdb")
    @JsonBackReference
    private List<WishList> wishLists = new ArrayList<>();
}
