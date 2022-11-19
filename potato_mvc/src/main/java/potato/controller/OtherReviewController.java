package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import potato.service.OtherReviewService;
import potato.vo.OtherReviewVO;

@Controller
public class OtherReviewController {
	
	@Autowired(required = false)
	private OtherReviewService ors;
	
	//Å¸»ç¿ëÀÚ¸®ºä
	@RequestMapping(value="other_review.do", method=GET)
	public String otherReview(HttpSession session,OtherReviewVO orVO, Model model) {
		String url = "other_profiles/jsp/other_user_profiles";
		
		return url;
	}//otherReview
	
	//½Å°í)¸®ºä-ÆË¾÷
	@RequestMapping(value = "reportPop.do",method = GET)
	public String reportPop(HttpSession session, String string) {
		return "other_profiles/jsp/report_review_popup";
	}//reportReview

}
