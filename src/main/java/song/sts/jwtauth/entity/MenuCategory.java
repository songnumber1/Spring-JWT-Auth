package song.sts.jwtauth.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Data;

@Data
@Entity
public class MenuCategory {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long categoryId;
	
	private String categoryTitle;
	
	private boolean isActive;
	
	private String remark;
	
	@JsonManagedReference
	@OneToMany(mappedBy = "menuCategory", fetch = FetchType.LAZY)
	private List<MenuOneDept> menuOneDepts = new ArrayList();	
}
