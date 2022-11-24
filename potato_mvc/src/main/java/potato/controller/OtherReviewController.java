package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import potato.service.OtherReviewService;
import potato.vo.DetailedReportVO;
import potato.vo.OtherReviewReportVO;
import potato.vo.OtherReviewVO;

@Controller
public class OtherReviewController {
	
	@Autowired(required = false)
	private OtherReviewService ors;
///////////////////타사용자리뷰조회////////////////////
	
	//타사용자리뷰조회
	@RequestMapping(value="other_review.do", method= {POST,GET})
	public String otherReviewMove(HttpSession session, OtherReviewVO orVO, Model model) {
		//otherPid : 클릭했을 때 입력되는 아이디
		model.addAttribute("img",ors.searchOtherImg(orVO));
		model.addAttribute("nick",ors.searchOtherNick(orVO));
		model.addAttribute("rCnt",ors.searchOtherRev(orVO));
		model.addAttribute("rAll",ors.searchOtherRevAll(orVO));
		
		
		//페이징변수
		int totalData = ors.searchOtherRev(orVO);
		int lastPage = ors.lastPage(totalData);
		int curPage = orVO.getPageFlag();
		int startNum = ors.startNum(curPage);
		int isLast = ors.isLast(lastPage, startNum);
		
		//view로 전송
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("startNum", startNum);
		model.addAttribute("isLast", isLast);
		model.addAttribute("curPage", curPage);
		model.addAttribute("reviewList", ors.searchOtherRevAll(orVO));
		
		return  "other_profiles/jsp/other_user_profiles";
	}//otherReviewMove
	
	//사용자신고 팝업창 띄우기
	@RequestMapping(value="other_review_report.do",method=GET)
	public String lRevReportMove(HttpServletRequest request,OtherReviewReportVO orrVO, Model model) {
		model.addAttribute("rp", ors.searchOtherRevReport());
		
		orrVO.setId_reporter(request.getParameter("id"));
		orrVO.setRestarea_idx(Integer.parseInt(request.getParameter("restarea_idx")));
		orrVO.setReview_idx(Integer.parseInt(request.getParameter("review_idx")));
	
		model.addAttribute("orp", ors.searchRevReportChk(orrVO));
		return "other_profiles/jsp/report_review_popup";
	}
	
	//리뷰 신고 접수
	@RequestMapping(value = "other_review_report.do", method= {GET,POST})
	public String setReport(HttpServletRequest request, OtherReviewReportVO orrVO, Model model) {
		ors.addOtherRevReport(orrVO);
		
		orrVO.setId_reporter(request.getParameter("id_reporter"));
		orrVO.setRestarea_idx(Integer.parseInt(request.getParameter("restarea_idx")));
		orrVO.setReview_idx(Integer.parseInt(request.getParameter("review_idx")));
		
		model.addAttribute("orp", ors.searchRevReportChk(orrVO));
		
		return "other_profiles/jsp/report_review_popup";
	}
		
	

}//class
