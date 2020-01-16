package project.web.mvc.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
public class Authority {

   @Id
   @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "AUTHORITY_SEQ_GENERATOR")
   @SequenceGenerator(
         name="AUTHORITY_SEQ_GENERATOR", sequenceName = "AUTHORITY_SEQ",
         initialValue = 1, allocationSize = 50)
   @Column(name = "AUTHORITY_NO")
   private Long authorityNo;
   
   
   @ManyToOne
   @JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false, unique = true)
    private Userdb userdb;

   @Column(nullable = false)
    private String role;

}