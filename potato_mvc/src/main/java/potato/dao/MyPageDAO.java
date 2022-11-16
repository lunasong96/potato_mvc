package potato.dao;

import java.util.List;

import potato.domain.MyPageBookmarkDomain;
import potato.domain.MyPageMyInfoDomain;
import potato.domain.MyPageReportDomain;
import potato.manager.domain.ReviewDomain;
import potato.vo.MyPageBookmarkVO;
import potato.vo.MyPageLikeVO;
import potato.vo.MyPageMyInfoEditVO;
import potato.vo.MyPageMyReviewVO;
import potato.vo.MyPagePwEditVO;
import potato.vo.MyPageQuitVO;
import potato.vo.MypageLikeReviewVO;
import potato.vo.MypageReportVO;

public class MyPageDAO {
	
	//마이페이지 접속
	public String selectLogin(String id) {
		return null;
	}//selectLogin
	
	//내 정보 조회
	public MyPageMyInfoDomain selectInfo(MyPageMyInfoEditVO mieVO) {
		return null;
	}//selectInfo
	
	//내 정보 수정
	public int updateInfo(MyPageMyInfoEditVO mieVO) {
		return 0;
	}//updateInfo
	
	//비밀번호 수정
	public int updatePw(MyPagePwEditVO peVO) {
		return 0;
	}//updatePw
	
	//회원 탈퇴
	public int updateQuit(MyPageQuitVO qVO) {
		return 0;
	}//updateQuit
	
	//리뷰 조회
	public List<ReviewDomain> selectMyReview(String id){
		return null;
	}//selectMyReview
	
	//총 리뷰 수
	public int selectMyReviewCnt(String string) {
		return 0;
	}//selectMyReviewCnt
	
	//내 리뷰 - 좋아요 수 
	public int selectLikeCnt(String string) {
		return 0;
	}//selectLikeCnt
	
	//내 리뷰 - 리뷰 삭제, 수정
	public int updateMyReview(MyPageMyReviewVO mrVO) {
		return 0;
	}//updateMyReview
	
	//좋아요 한 리뷰 조회
	public List<ReviewDomain>selectLikeReview(MypageLikeReviewVO lrVO){
		return null;
	}//selectLikeReview
	
	//좋아요 한 리뷰 수
	public int selectLikeReviewCnt(MypageLikeReviewVO lrVO) {
		return 0;
	}//selectLikeReviewCnt
	
	//좋아요한 리뷰 :좋아요 수 조회
	public int selectLikeCnt(MypageLikeReviewVO lrVO) {
		return 0;
	}//selectLikeCnt
	
	//좋아요한 리뷰 : 좋아요 추가
	public void insertLike(MyPageLikeVO lVO) {
		
	}//insertLike
	
	//좋아요한 리뷰 : 좋아요 취소
	public int delLike(MyPageLikeVO lVO) {
		return 0;
	}//delLike
	
	//좋아요한 리뷰 - 신고창 팝업
	public MyPageReportDomain selectReportPopup() {
		return null;
	}//selectReportPopup
	
	//좋아요한 리뷰 - 신고하기
	public void insertReviewReport(MypageReportVO rVO) {
		
	}//insertReviewReport
	
	//북마크한 휴게소 조회
	public List<MyPageBookmarkDomain> selectBookmark(String id){
		return null;
	}//selectBookmark
	
	//북마크한 휴게소 삭제(아이디, 휴게소 인덱스)(String id랑 restrea_idx가 bookmarkVO네..)
	public int delBookmark(MyPageBookmarkVO bVO) {
		return 0;
	}//delBookmark
	
}//class
