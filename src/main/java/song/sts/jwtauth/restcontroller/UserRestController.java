package song.sts.jwtauth.restcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import song.sts.jwtauth.entity.User;
import song.sts.jwtauth.exception.AccountException;
import song.sts.jwtauth.exception.AccountExceptionType;
import song.sts.jwtauth.repository.UserRepository;
import song.sts.jwtauth.security.handler.AuthWorkHandler;
import song.sts.jwtauth.util.ResponseData;

@RestController
public class UserRestController {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    private AuthWorkHandler authWorkHandler;

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @PostMapping("/userAccount/join/AdminProc")
    public ResponseEntity<?> joinAdminSave(HttpServletRequest request, HttpServletResponse response,
            @RequestBody User user) {
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

        if (user.getUsername() == null || user.getUsername().isEmpty() || user.getPassword() == null
                || user.getPassword().isEmpty()) {
            throw new AccountException(AccountExceptionType.REUQIRED_PARAMETER_ERROR);
        }

        User userEntity = userRepository.findByUsername(user.getUsername());

        if (userEntity != null) {
            throw new AccountException(AccountExceptionType.DUPLICATED_USER);
        }

        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(user.getRoles());
        userRepository.save(user);

        return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
    }
}
