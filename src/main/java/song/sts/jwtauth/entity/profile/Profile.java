package song.sts.jwtauth.entity.profile;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Data;

@Data
@Entity
public class Profile {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String name;

    private String job;

    private String address;

    private String full_Addrees;

    private String mail;

    private String tel;

    private String img;

    private String birth;

    @CreationTimestamp
    private LocalDateTime writeDate;

    @JsonManagedReference
	@OneToMany(mappedBy = "profile", fetch = FetchType.LAZY)
    private List<Experience> experiences = new ArrayList<>();

    @JsonManagedReference
    @OneToMany(mappedBy = "profile", fetch = FetchType.LAZY)
    private List<Skill> skills = new ArrayList<>();

    @JsonManagedReference
	@OneToMany(mappedBy = "profile", fetch = FetchType.LAZY)
    private List<Education> educations = new ArrayList<>();

    @JsonManagedReference
    @OneToMany(mappedBy = "profile", fetch = FetchType.LAZY)
    private List<Certificate> certificates = new ArrayList<>();

    private String remark;
}
