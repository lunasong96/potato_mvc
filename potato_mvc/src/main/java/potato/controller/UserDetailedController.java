package potato.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import potato.vo.DetailedReviewVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpSession;

@Controller
public class UserDetailedController {

	//휴게소 상세창 접속
	@RequestMapping(value = "user_detailed.do", method=GET)
	public String userDetailedMove(String restidx, Model model) {
		return "detailed/jsp/user_detailed";
	}

	//리뷰작성창 접속
	@RequestMapping(value = "write.do", method=GET)
	public String writePageMove(HttpSession session, DetailedReviewVO drVO, Model model) {
		return "detailed/jsp/write";
	}
	
	//리뷰수정창 접속
	@RequestMapping(value = "rewrite.do", method=GET)
	public String rewritePageMove(HttpSession session, DetailedReviewVO drVO, Model model) {
		return "detailed/jsp/rewrite";
	}
	
	//리뷰 신고창 오픈
	@RequestMapping(value = "report_review_popup.do", method=GET)
	public String reportPopip(HttpSession session, String restname, Model model) {
		return "detailed/jsp/report_review_popup";
	}
	
}
