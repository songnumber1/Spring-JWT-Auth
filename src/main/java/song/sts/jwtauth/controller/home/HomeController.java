package song.sts.jwtauth.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import io.swagger.annotations.ApiOperation;

@Controller
public class HomeController {

	@ApiOperation(value = "Home", notes = "단순 테스트")
	@GetMapping({ "", "/", "home", "index", "main" })
	public String home(Model menuModel) {
		return "index";
	}
}
