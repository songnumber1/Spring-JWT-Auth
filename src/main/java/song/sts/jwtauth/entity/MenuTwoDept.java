package song.sts.jwtauth.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.Data;

@Data
@Entity
public class MenuTwoDept {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long menuTwoDeptid;
	
	private String menuTwoTitle;
	
	private String menuTwoUrl;
	
	private boolean isActive;
	
	private String remark;
	
	@ManyToOne
	@JoinColumn(name="menuOneDeptid")
	private MenuOneDept menuOneDept;
	
	@OneToMany(mappedBy = "menuTwoDept")
	private List<MenuThreeDept> menuThreeDepts = new ArrayList();
}
