package potato.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class OtherReviewController {
	
	//타사용자리뷰
	@RequestMapping(value="/OtherReviewMove.do", method=POST)
	public String OtherReviewMove(HttpSession session, String id, Model model) {
		return "other_profiles/jsp/other_user_profiles";
	}//OtherReviewMove

}
