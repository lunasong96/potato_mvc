package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import potato.vo.WriteReviewVO;

@Controller
public class WriteController {

	//리뷰작성완료
	@RequestMapping(value = "review_write.do", method=GET)
	public String reviewWrite(HttpSession session, HttpServletRequest request, WriteReviewVO wrVO) {
		return "detailed/jsp/user_detailed";
	}
	
	//리뷰 수정 작성완료
	@RequestMapping(value = "re_review_write.do", method=GET)
	public String reReviewWrite(HttpSession session, HttpServletRequest request, WriteReviewVO wrVO) {
		return "detailed/jsp/user_detailed";
	}
	
}
