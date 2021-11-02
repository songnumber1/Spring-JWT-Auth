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
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.Data;

@Data
@Entity
public class MenuOneDept {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long menuOneDeptid;

	private String menuOneTitle;

	private String menuOneUrl;

	private boolean isActive;

	private String remark;

	@JsonBackReference
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoryId")
	private MenuCategory menuCategory;

	@JsonManagedReference
	@OneToMany(mappedBy = "menuOneDept", fetch = FetchType.LAZY)
	private List<MenuTwoDept> menuTwoDepts = new ArrayList<MenuTwoDept>();
}
