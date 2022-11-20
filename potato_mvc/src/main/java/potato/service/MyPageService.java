package potato.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.dao.MyPageDAO;
import potato.domain.MyPageBookmarkDomain;
import potato.domain.MyPageMyInfoDomain;
import potato.domain.MyPageReportDomain;
import potato.domain.MyPageReviewDomain;
import potato.manager.domain.ReviewDomain;
import potato.vo.LoginVO;
import potato.vo.MyPageBookmarkVO;
import potato.vo.MyPageLikeVO;
import potato.vo.MyPageMyInfoEditVO;
import potato.vo.MyPageMyReviewVO;
import potato.vo.MyPagePwEditVO;
import potato.vo.MyPageQuitVO;
import potato.vo.MypageReportVO;

@Component
public class MyPageService {
	@Autowired(required = false)
	private MyPageDAO mDAO;
	
	//마이페이지 접속
	public String searchMyPageIn(String id) {
		
		return null;
	}//searchMyPageIn
	
	//내 정보 조회
	public List<MyPageMyInfoDomain>searchInfo(String id) {
		List<MyPageMyInfoDomain>mid=null;
		mid=mDAO.selectInfo(id);
		return mid;
	}//searchInfo
	
	//아이디,비밀번호 확인
	public boolean searchMember(LoginVO lVO) {
		
		return false;
	}//searchMember
	
	//내 정보 수정
	public int updateInfo(MyPageMyInfoEditVO mieVO) {
		
		return 0; 
	}//updateInfo
	
	//비밀번호 수정 처리
	public int modifyPw(MyPagePwEditVO peVO) {
		int updateCnt=0;
		updateCnt=mDAO.updatePw(peVO);
		return updateCnt;
	}//modifyPw
	
	//회원탈퇴
	public int updateQuit(MyPageQuitVO qVO) {
		return 0;
	}//updateQuit
	
	//회원탈퇴 처리
	public String quitProcess(HttpSession session, MyPageQuitVO qVO) {
		return null;
	}//quitProcess
	
	//리뷰조회 
	public String searchMyReview(List<MyPageReviewDomain> list) {
		return null;
	}//searchMyReview
	
	//총 리뷰 수
	public int searchMyReviewCnt(String id) {
		return 0;
	}//searchMyReviewCnt
	
	//좋아요 수
	public int searchLikeCnt(MyPageLikeVO lVO) {
		return 0;
	}//searchLikeCnt
	
	//내 리뷰 삭제, 수정
	public int updateMyReview(MyPageMyReviewVO mrVO) {
		return 0;
	}//updateMyReview
	
	//페이징(도려옴 ㅎㅎ)
	//내가 원하는 보여줄 페이지 수를 먼저 넣고 만약에 초과할 경우 isLast를 매개변수로 새로 set
		public int isLast(int lastPage, int startNum) {
			
			return 0;
		}
	public int searchLikeReview(MyPageMyReviewVO rVO) {
		return 0;
	}//searchLikeReview
		
	//좋아요한 리뷰 조회
	public List<ReviewDomain> searchLikeReview(String id){
		return null;
	}//searchLikeReview
	
	//리뷰 수
	public int searchLikeReviewCnt(String id) {
		return 0;
	}//searchLikeReviewCnt
	
	//좋아요 수 조회
	public int searchLikeCnt(String id) {
		return 0;
	}//searchLikeCnt
	
	//좋아요 추가
	public void addLike(MyPageLikeVO lVO) {
		
	}//addLike
	
	//좋아요 취소
	public int delLike(MyPageLikeVO lVO) {
		return 0;
	}//delLike
	
	//신고창 팝업(이거 맞나,,,)
	public MyPageReportDomain reportPopup() {
		return null;
	}//MyPageReportDomain
	
	//신고하기(처리과정)
	public String reportReview(MypageReportVO rVO) {
		return null;
	}//reportReview
	
	//북마크한 휴게소 조회
	public List<MyPageBookmarkDomain>searchBookmark(String id){
		List<MyPageBookmarkDomain> mbd=null;
		mbd=mDAO.selectBookmark(id);
		
		
		return mbd;
	}//searchBookmark
	
	//북마크한 휴게소 삭제(아이디, 휴게소 인덱스-int)
	public int removeBookmark(HttpSession session, MyPageBookmarkVO bVO) {
		int cnt=mDAO.delBookmark(bVO);
		return cnt;
	}//removeBookmark
	
	
}//class
