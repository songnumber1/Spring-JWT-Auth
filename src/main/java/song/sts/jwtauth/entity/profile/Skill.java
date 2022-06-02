package song.sts.jwtauth.entity.profile;
import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.Data;

@Data
@Entity
public class Skill {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String title;

    private String level;

    @CreationTimestamp
    private LocalDateTime writeDate;

    private String remark;

    @JsonBackReference
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "profileid")
	private Profile profile;
}
