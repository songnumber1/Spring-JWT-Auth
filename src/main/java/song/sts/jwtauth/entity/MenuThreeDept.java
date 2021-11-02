package song.sts.jwtauth.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.Data;

@Data
@Entity
public class MenuThreeDept {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long menuThreeDeptid;
	
	private String menuThreeDeptTitle;
	
	private String menuThreeDeptUrl;
	
	private boolean isActive;
	
	private String remark;
	
	@JsonBackReference
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="menuTwoDeptid")
	private MenuTwoDept menuTwoDept;
}
