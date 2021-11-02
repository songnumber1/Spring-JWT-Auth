package song.sts.jwtauth.restcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import song.sts.jwtauth.entity.MenuCategory;
import song.sts.jwtauth.entity.MenuOneDept;
import song.sts.jwtauth.entity.MenuThreeDept;
import song.sts.jwtauth.entity.MenuTwoDept;
import song.sts.jwtauth.repository.MenuCategoryRepository;
import song.sts.jwtauth.repository.MenuOneDeptRepository;
import song.sts.jwtauth.repository.MenuThreeDeptRepository;
import song.sts.jwtauth.repository.MenuTwoDeptRepository;
import song.sts.jwtauth.security.handler.AuthWorkHandler;
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

	@Autowired
	private AuthWorkHandler authWorkHandler;

	@PostMapping("/menu/category/add")
	public ResponseEntity<?> CategorySave(@RequestBody MenuCategory menuCategory) {
		menuCategoryRepository.save(menuCategory);

		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
	}

	@PostMapping("/menu/onedept/add")
	public ResponseEntity<?> MemuOneDeptSave(@RequestBody MenuOneDept menuOneDept) {
		MenuCategory menuCategory = menuCategoryRepository.findById(menuOneDept.getMenuCategory().getCategoryId())
				.orElseThrow(() -> new NoSuchElementException());

		if (menuCategory == null)
			return null;

		menuOneDept.setMenuCategory(menuCategory);

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

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/menu/category/select")
	public ResponseEntity<?> categorySelect(HttpServletRequest request, HttpServletResponse response) {
		if(!request.isUserInRole("ROLE_ADMIN")) {
			authWorkHandler.logoutDataDelete(request, response);
			return null;
		}
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		UserDetails userDetails = (UserDetails)principal;
		
		if(userDetails == null) {
			authWorkHandler.logoutDataDelete(request, response);
			return null;
		}

		List<MenuCategory> result = menuCategoryRepository.findAll();

		final StringWriter sw = new StringWriter();
		final ObjectMapper mapper = new ObjectMapper();
		String resultToString = null;

		try {
			mapper.writeValue(sw, result);
			resultToString = sw.toString();
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", resultToString, null);
	}

	// @PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/menu/onedept/select")
	public ResponseEntity<?> oneDeptSelect(HttpServletRequest request, HttpServletResponse response) {
		if (!request.isUserInRole("ROLE_ADMIN")) {
			authWorkHandler.logoutDataDelete(request, response);
			return null;
		}

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserDetails userDetails = (UserDetails) principal;

		if (userDetails == null) {
			authWorkHandler.logoutDataDelete(request, response);
			return null;
		}

		List<MenuOneDept> result = menuOneDeptRepository.findAll();

		final StringWriter sw = new StringWriter();
		final ObjectMapper mapper = new ObjectMapper();
		String resultToString = null;

		try {
			mapper.writeValue(sw, result);
			resultToString = sw.toString();
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", resultToString, null);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/menu/twodept/select")
	public ResponseEntity<?> twoDeptSelect(HttpServletRequest request, HttpServletResponse response) {
		if (!request.isUserInRole("ROLE_ADMIN")) {
			authWorkHandler.logoutDataDelete(request, response);
			return null;
		}

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserDetails userDetails = (UserDetails) principal;

		if (userDetails == null) {
			authWorkHandler.logoutDataDelete(request, response);
			return null;
		}

		List<MenuTwoDept> result = menuTwoDeptRepository.findAll();

		final StringWriter sw = new StringWriter();
		final ObjectMapper mapper = new ObjectMapper();
		String resultToString = null;

		try {
			mapper.writeValue(sw, result);
			resultToString = sw.toString();
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", resultToString, null);
	}
}
