package song.sts.jwtauth.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import song.sts.jwtauth.security.handler.AuthWorkHandler;

@Controller
@RequestMapping("/setting")
public class SettingController {
    @Autowired
    private AuthWorkHandler authWorkHandler;

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/")
    public String setting(HttpServletRequest request, HttpServletResponse response) {
        if (!request.isUserInRole("ROLE_ADMIN")) {
            authWorkHandler.logoutDataDelete(request, response);
            return null;
        }

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        UserDetails userDetails = (UserDetails) principal;

        if (userDetails == null) {
            authWorkHandler.logoutDataDelete(request, response);
        }

        return "setting/setting";
    }
}
