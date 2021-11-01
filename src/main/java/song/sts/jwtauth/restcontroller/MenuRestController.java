package song.sts.jwtauth.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import song.sts.jwtauth.entity.MenuCategory;
import song.sts.jwtauth.entity.MenuOneDept;
import song.sts.jwtauth.entity.MenuThreeDept;
import song.sts.jwtauth.entity.MenuTwoDept;
import song.sts.jwtauth.repository.MenuCategoryRepository;
import song.sts.jwtauth.repository.MenuOneDeptRepository;
import song.sts.jwtauth.repository.MenuThreeDeptRepository;
import song.sts.jwtauth.repository.MenuTwoDeptRepository;
import song.sts.jwtauth.util.ResponseData;

@RestController
public class MenuRestController {
	@Autowired
	private MenuCategoryRepository menuCategoryRepository;
	
	@Autowired
	private MenuOneDeptRepository menuOneDeptRepository;
	
	@Autowired
	private MenuTwoDeptRepository menuTwoDeptRepository; 
	
	@Autowired
	private MenuThreeDeptRepository menuThreeDeptRepository;
		
	@PostMapping("/menu/category/add")
	public ResponseEntity<?> CategorySave(@RequestBody MenuCategory menuCategory) {
		menuCategoryRepository.save(menuCategory);
		
		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
	}
	
	@PostMapping("/menu/onedept/add")
	public ResponseEntity<?> MemuOneDeptSave(@RequestBody MenuOneDept menuOneDept) {
		menuOneDeptRepository.save(menuOneDept);
		
		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
	}
	
	@PostMapping("/menu/twodept/add")
	public ResponseEntity<?> MenuTwoDeptSave(@RequestBody MenuTwoDept menuTwoDept) {
		menuTwoDeptRepository.save(menuTwoDept);
		
		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
	}
	
	@PostMapping("/menu/threedept/add")
	public ResponseEntity<?> save(@RequestBody MenuThreeDept menuThreeDept) {
		menuThreeDeptRepository.save(menuThreeDept);
		
		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
	}
}
