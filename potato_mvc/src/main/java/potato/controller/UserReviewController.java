package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import potato.domain.MyReviewDomain;
import potato.service.UserReviewService;
import potato.vo.MyPageMyReviewVO;
import potato.vo.MyReviewVO;
import potato.vo.MypageLikeReviewVO;
import potato.vo.MypageReportVO;

@Controller
public class UserReviewController {
	
	@Autowired(required = false)
	private UserReviewService urs;
///////////////////사용자리뷰조회////////////////////
	
	//사용자리뷰조회
	@RequestMapping(value = "my_review.do", method = {GET,POST})
	public String myReviewMove(HttpSession session, MyReviewVO mrVO, Model model) {
		////네비바////
		model.addAttribute("img",urs.searchMyImg(mrVO));
		model.addAttribute("nick",urs.searchMyNick(mrVO));
		
		
		//session id에 paramter가 이상한게 들어가서 set 해주는 부분
		mrVO.setId((String)session.getAttribute("id"));//id 넣어주기
		
		
		List<MyReviewDomain> list=urs.searchMyRevAll(mrVO);
		System.out.println("-----리스트----"+list);//리스트조회
		model.addAttribute("mAll",list);
		
		//페이징변수
		int totalData = urs.searchTotalReview(mrVO);
		int lastPage = urs.lastPage(totalData);
		int curPage = mrVO.getPageFlag();
		int startNum = urs.startNum(curPage);
		int isLast = urs.isLast(lastPage, startNum);
		
		//view로 전송
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("startNum", startNum);
		model.addAttribute("isLast", isLast);
		model.addAttribute("curPage", curPage);
		model.addAttribute("reviewList", urs.searchMyRevAll(mrVO));
		
		return "mypages/jsp/my_review";
	}//myReviewMove
	
	
///////////////////좋아요한리뷰조회////////////////////	
	@RequestMapping(value = "like_review.do", method = {GET,POST})
	public String likeReviewMove(HttpSession session, MyReviewVO mrVO, Model model) {
		
		mrVO.setId((String)session.getAttribute("id"));//id 넣어주기
		model.addAttribute("lAll",urs.searchLikeRevAll(mrVO));
		
		
		//페이징변수
		int totalData = urs.searchTotalLikedReview(mrVO);
		int lastPage = urs.lastPage(totalData);
		int curPage = mrVO.getPageFlag();
		int startNum = urs.startNum(curPage);
		int isLast = urs.isLast(lastPage, startNum);
				
		//view로 전송
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("startNum", startNum);
		model.addAttribute("isLast", isLast);
		model.addAttribute("curPage", curPage);
		model.addAttribute("reviewList", urs.searchLikeRevAll(mrVO));
		//model.addAttribute("rIdx",mrVO.getRestarea_idx());
		
		return "mypages/jsp/like_review";
	}//likeReviewMove
	
	//리뷰 좋아요 추가(비동기)
	@ResponseBody
	@RequestMapping(value = "ajax_addLike.do", method= {GET,POST})
	public String enterLike(HttpSession session, MypageLikeReviewVO mlrVO) {
		String jsonObj=urs.getLikeAdd(mlrVO);
		return jsonObj;
	}

	//리뷰 좋아요 삭제(비동기)
	@ResponseBody
	@RequestMapping(value = "ajax_delLike.do", method= {GET,POST})
	public String cancelLike(HttpSession session, MypageLikeReviewVO mlrVO) {
		String jsonObj=urs.getLikeDel(mlrVO);
		return jsonObj;
	}
	
	//사용자신고 팝업창 띄우기
	@RequestMapping(value="like_review_report.do",method=GET)
	public String lRevReportMove(HttpServletRequest request,MypageReportVO mrVO, Model model) {
		model.addAttribute("rp", urs.searchRevReport());
		
		mrVO.setId_reporter(request.getParameter("id"));
		mrVO.setRestarea_idx(Integer.parseInt(request.getParameter("restarea_idx")));
		mrVO.setReview_idx(Integer.parseInt(request.getParameter("review_idx")));
		
		model.addAttribute("rpc", urs.searchRevReportChk(mrVO));
		return "mypages/jsp/report_review_popup";
	}
	
	//리뷰 신고 접수
	@RequestMapping(value = "mypage_report.do", method= {GET,POST})
	public String setReport(HttpServletRequest request, MypageReportVO mrVO, Model model) {
		urs.setRevReport(mrVO);
		
		mrVO.setId_reporter(request.getParameter("id_reporter"));
		mrVO.setRestarea_idx(Integer.parseInt(request.getParameter("restarea_idx")));
		mrVO.setReview_idx(Integer.parseInt(request.getParameter("review_idx")));
		
		model.addAttribute("rpc", urs.searchRevReportChk(mrVO));
		
		return "mypages/jsp/report_review_popup";
	}
	
	////리뷰 삭제
	@ResponseBody
	@RequestMapping(value = "del_my_review.do", method= {GET,POST})
	public String delMyReview(MyPageMyReviewVO mpmrVO) {
		String jsonObj=urs.getRevDel(mpmrVO);
		return jsonObj;
	}
	
}//class
