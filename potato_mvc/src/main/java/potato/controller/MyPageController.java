package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import potato.service.MyPageService;
import potato.vo.MyPageMyInfoEditVO;
import potato.vo.MyPagePwEditVO;
import potato.vo.MyPageQuitVO;

@Controller
public class MyPageController {
	
	@Autowired(required = false)
	private MyPageService mps;
	
	//마이페이지 진입화면
	@RequestMapping(value="myPageIn.do", method=GET)
	public String myPageIn(HttpSession session) {
		//임의로 세션 만들기	
		session.setAttribute("id", "canopener");
		
		return "mypages/jsp/mypage_in";
	}//myPageIn
	
	//아이디, 비밀번호 확인
	@RequestMapping(value="chkIdPass.do",method=GET)
	public String chkIdPass(HttpSession session, String string ) {
		return "";
	}//chkIdPass
	
	//내 정보 수정 폼
	@RequestMapping(value="my_info_edit.do",method = GET)
	public String myInfoEdit(HttpSession session, Model model ) {
		//임의로 세션 만들기	
		session.setAttribute("id", "canopener");
		
			model.addAttribute("mie",mps.searchInfo((String)session.getAttribute("id")));
			
		
		return "mypages/jsp/my_info_edit";
	}//myInfoEdit
	
	//내 정보 수정(처리)
	@RequestMapping(value="myInfoEditProcess.do",method = GET)
		public String myEditProcess(HttpSession session, MyPageMyInfoEditVO mmeVO, Model model) {
			return "myInfoEditProcess";
	}//myInfoEditProcess
	
	//프로필 사진등록
	@RequestMapping(value = "addProfileImg.do",method=GET)
		public String addProfileImg(String string) {
			return "addProfileImg";
	}//addProfileImg
	
	//프로필 사진삭제
	@RequestMapping(value = "delProfileImg.do",method=GET)
		public String delProfileImg(String string) {
			return "delProfileImg";
	}//delProfileImg
	
	//비밀번호 수정 폼
	@RequestMapping(value="password_edit.do",method = GET)
		public String pwEdit() {
			return "mypages/jsp/password_edit";
	}//pwEdit
	
	//비밀번호 수정 처리
	@RequestMapping(value = "password_edit_process.do" ,method=GET)
		public String pwEditProcess(HttpSession session, MyPagePwEditVO mpeVO ) {
			return "password_edit_processs";
	}//pwEditProcess
	
	//회원 탈퇴 폼
	@RequestMapping(value = "unregister.do", method = GET)
		public String unregister() {
			return "mypages/jsp/unregister";
	}//quit
	
	//회원 탈퇴 처리
	@RequestMapping(value = "quitProcess.do", method = GET)
		public String quitProcess(HttpSession session, MyPageQuitVO mqVO ) {
			return "quitProcess";
	}//quitProcess
	
	//내가 쓴 리뷰 조회
	@RequestMapping(value = "my_review.do", method = GET)
		public String myReview(HttpSession session, Model model) {
			return "mypages/jsp/my_review";
	}//myReview
	
	//내가 쓴 리뷰 삭제(리뷰 인덱스로)
	@RequestMapping(value = "delMyReview.do", method = GET)
		public String delMyReview(HttpSession session, String string) {
			return "myReview";
	}//delMyReview
	
	//좋아요한 리뷰
	@RequestMapping(value = "like_review.do",method = GET)
		public String likeReview(HttpSession session,Model model) {
			return "mypages/jsp/like_review";
	}//likeReview
	
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
	
	//즐겨찾기한 휴게소
	@RequestMapping(value = "bookmark.do", method=GET)
		public String bookmark(HttpSession session, Model model) {
		//임의로 세션 만들기	
		session.setAttribute("id", "canopener");
		//System.out.println(session.getAttribute("id")+"findMe");
		//System.out.println(mps.searchBookmark((String)session.getAttribute("id"))+"findMe");
		model.addAttribute("bookmarklist",mps.searchBookmark((String)session.getAttribute("id")));
		return "mypages/jsp/bookmark";
	}//bookmark
	
	//즐겨찾기한 휴게소 삭제
	@RequestMapping(value = "delBookmark.do", method=GET)
		public String delBookmark(HttpSession session, String string) {
			return "bookmark";
	}//bookmark
	
	
}//class
