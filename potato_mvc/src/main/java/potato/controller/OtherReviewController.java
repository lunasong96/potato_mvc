package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OtherReviewController {
	
	//Å¸»ç¿ëÀÚ¸®ºä
	@RequestMapping(value="/otherReviewMove.do", method=GET)
	public String OtherReviewMove(HttpSession session, String id, Model model) {
		return "other_profiles/jsp/other_user_profiles";
	}//OtherReviewMove
	
	//½Å°í)¸®ºä-ÆË¾÷
	@RequestMapping(value = "/reportReview.do",method = GET)
	public String reportReview(HttpSession session, String string) {
		return "mypages/jsp/report_review_popup";
	}//reportReview

}
