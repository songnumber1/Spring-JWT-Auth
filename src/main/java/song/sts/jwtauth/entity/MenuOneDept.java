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
public class MenuOneDept {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long menuOneDeptid;
	
	private String menuOneTitle;
	
	private String menuOneUrl;
	
	@ManyToOne
	@JoinColumn(name="categoryId")
	private MenuCategory menuCategory;
	
	@OneToMany(mappedBy = "menuOneDept")
	private List<MenuTwoDept> menuTwoDepts = new ArrayList(); 
}
