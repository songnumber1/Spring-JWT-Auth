package song.sts.jwtauth.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class MenuThreeDept {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long menuThreeDeptid;
	
	private String menuThreeTitle;
	
	private String menuThreeUrl;
	
	private boolean isActive;
	
	private String remark;
	
	@ManyToOne
	@JoinColumn(name="menuTwoDeptid")
	private MenuTwoDept menuTwoDept;
}
