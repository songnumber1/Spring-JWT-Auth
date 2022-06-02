package song.sts.jwtauth.restcontroller.profile;

import java.io.IOException;
import java.io.StringWriter;
import java.util.List;

import javax.persistence.EntityManager;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import song.sts.jwtauth.entity.profile.Profile;
import song.sts.jwtauth.repository.ProfileRepository;
import song.sts.jwtauth.security.handler.AuthWorkHandler;
import song.sts.jwtauth.util.ResponseData;

@RestController
@RequestMapping("/profile/api")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class ProfileRestController {
    @Autowired
    private ProfileRepository profileRepository;

    @Autowired
	private AuthWorkHandler authWorkHandler;

	@Autowired
    EntityManager em;

    @GetMapping("/select")
    public ResponseEntity<?> ProfileSelect(HttpServletRequest request, HttpServletResponse response) {

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

        List<Profile> result = profileRepository.findAll();

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
