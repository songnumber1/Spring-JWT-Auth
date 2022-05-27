package song.sts.jwtauth.entity.data;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
public class SiteItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String siteName;

    private String siteId;

    private String sitePw;

    private String siteUrl;

    private String siteThumbnail;

    @CreationTimestamp
    private LocalDateTime writeDate;

    private String remark;
}
