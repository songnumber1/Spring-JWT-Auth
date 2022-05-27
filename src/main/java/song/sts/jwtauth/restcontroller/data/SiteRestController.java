package song.sts.jwtauth.restcontroller.data;

import java.io.IOException;
import java.io.StringWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import song.sts.jwtauth.entity.data.SiteItem;
import song.sts.jwtauth.repository.SiteRepository;
import song.sts.jwtauth.security.handler.AuthWorkHandler;
import song.sts.jwtauth.util.ResponseData;

@RestController
@RequestMapping("/site/api")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class SiteRestController {
    @Autowired
    private SiteRepository siteRepository;

    @Autowired
	private AuthWorkHandler authWorkHandler;

    @PostMapping("/add")
    public ResponseEntity<?> SiteSave(HttpServletRequest request, HttpServletResponse response, @RequestBody SiteItem siteItem) {
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

        siteRepository.save(siteItem);
        return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
    }

	@PostMapping("/edit")
    public ResponseEntity<?> SiteEdit(HttpServletRequest request, HttpServletResponse response, @RequestBody SiteItem siteItem) {
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

		SiteItem findSiteItem = siteRepository.findById(siteItem.getId()).get();

		if (findSiteItem == null) {
			return ResponseData.CreateReponse(HttpStatus.BAD_REQUEST.value(), "Item not found", null, null);
		}

		System.out.println(findSiteItem);

		findSiteItem.setSiteName(siteItem.getSiteName());
		findSiteItem.setSiteId(siteItem.getSiteId());
		findSiteItem.setSitePw(siteItem.getSitePw());
		findSiteItem.setSiteUrl(siteItem.getSiteUrl());
		findSiteItem.setWriteDate(findSiteItem.getWriteDate());
		findSiteItem.setRemark(siteItem.getRemark());

		siteRepository.save(findSiteItem);
        return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
    }

    @GetMapping("/select")
    public ResponseEntity<?> SiteSelect(HttpServletRequest request, HttpServletResponse response){

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

        List<SiteItem> result = siteRepository.findAll();

        final StringWriter sw = new StringWriter();
		final ObjectMapper mapper = new ObjectMapper();
        mapper.registerModule(new JavaTimeModule());
		String resultToString = null;

		try {
			mapper.writeValue(sw, result);
			resultToString = sw.toString();
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", resultToString, null);
    }

	@PostMapping("/delete")
    public ResponseEntity<?> SiteDelete(HttpServletRequest request, HttpServletResponse response, @RequestBody SiteItem siteItem) {
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

		siteRepository.delete(siteItem);
        return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
    }

	@PostMapping("/getInfo")
    public ResponseEntity<?> SiteGetInfo(HttpServletRequest request, HttpServletResponse response, @RequestBody SiteItem siteItem){

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

        SiteItem result = siteRepository.findById(siteItem.getId()).get();

        final StringWriter sw = new StringWriter();
		final ObjectMapper mapper = new ObjectMapper();
        mapper.registerModule(new JavaTimeModule());
		String resultToString = null;

		try {
			mapper.writeValue(sw, result);
			resultToString = sw.toString();
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", resultToString, null);
    }
}
