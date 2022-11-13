package potato.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class UserDetailedController {

	@RequestMapping(value = "", method=GET)
	public String userDetailedMove(String restidx, Model model) {
		return "";
	}
	
}
