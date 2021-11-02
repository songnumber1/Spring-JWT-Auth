package song.sts.jwtauth.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Data;

@Data
@Entity
public class MenuTwoDept {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long menuTwoDeptid;
	
	private String menuTwoDeptTitle;
	
	private String menuTwoDeptUrl;
	
	private boolean isActive;
	
	private String remark;
	
	@JsonBackReference
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="menuOneDeptid")
	private MenuOneDept menuOneDept;
	
	@JsonManagedReference
	@OneToMany(mappedBy = "menuTwoDept", fetch = FetchType.LAZY)
	private List<MenuThreeDept> menuThreeDepts = new ArrayList();	
}
