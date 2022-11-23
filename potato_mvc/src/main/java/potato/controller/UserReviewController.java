package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import potato.domain.MyReviewDomain;
import potato.service.UserReviewService;
import potato.vo.MyReviewVO;
import potato.vo.OtherReviewVO;

@Controller
public class UserReviewController {
	
	@Autowired(required = false)
	private UserReviewService urs;
///////////////////타사용자리뷰조회////////////////////
	
	//타사용자리뷰조회
	@RequestMapping(value="other_review.do", method= {POST,GET})
	public String otherReviewMove(HttpSession session, OtherReviewVO orVO, Model model) {
		//otherPid : 클릭했을 때 입력되는 아이디
		model.addAttribute("img",urs.searchOtherImg(orVO));
		model.addAttribute("nick",urs.searchOtherNick(orVO));
		model.addAttribute("rCnt",urs.searchOtherRev(orVO));
		model.addAttribute("rAll",urs.searchOtherRevAll(orVO));
		
		
		return  "other_profiles/jsp/other_user_profiles";
	}//otherReviewMove

///////////////////사용자리뷰조회////////////////////
	
	//사용자리뷰조회
	@RequestMapping(value = "my_review.do", method = GET)
	public String myReviewMove(HttpSession session, MyReviewVO mrVO, Model model) {
		model.addAttribute("img",urs.searchMyImg(mrVO));
		model.addAttribute("nick",urs.searchMyNick(mrVO));
		
		System.out.println("------id is---------"+session.getAttribute("id"));
		
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
	@RequestMapping(value = "like_review.do", method = GET)
	public String likeReviewMove(HttpSession session, MyReviewVO mrVO, Model model) {
		
		mrVO.setId((String)session.getAttribute("id"));//id 넣어주기
		model.addAttribute("lAll",urs.searchLikeRevAll(mrVO));
		
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
		
		return "mypages/jsp/like_review";
	}//likeReviewMove
	
	
	//내가 쓴 리뷰 삭제(리뷰 인덱스로)
	@RequestMapping(value = "delMyReview.do", method = GET)
		public String delMyReview(HttpSession session, String string) {
			return "myReview";
	}//delMyReview
	
	//좋아요 취소
	@RequestMapping(value = "delLike.do",method = GET)
		public String delLike(HttpSession session, String string) {
			return "delLike";
	}//delLike
	
	//신고)좋아요한 리뷰-팝업
	@RequestMapping(value = "reportReview.do",method = GET)
		public String reportReview(HttpSession session, String string) {
			return "mypages/jsp/report_review_popup";
	}//reportReview
	
	
	
	
}//class
