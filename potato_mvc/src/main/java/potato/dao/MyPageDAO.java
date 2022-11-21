package potato.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
import potato.domain.MyPageBookmarkDomain;
import potato.domain.MyPageMyInfoDomain;
import potato.domain.MyPageReportDomain;
import potato.manager.domain.ReviewDomain;
import potato.vo.LoginVO;
import potato.vo.MyPageBookmarkVO;
import potato.vo.MyPageLikeVO;
import potato.vo.MyPageMyInfoEditVO;
import potato.vo.MyPageMyReviewVO;
import potato.vo.MyPagePwEditVO;
import potato.vo.MyPageQuitVO;
import potato.vo.MypageLikeReviewVO;
import potato.vo.MypageReportVO;
@Component
public class MyPageDAO {
	
	//마이페이지 접속
	public String selectLogin(String id) {
		String sl=null;
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		//2. 쿼리문 실행
		sl=ss.selectOne("potato.mypageMapper.selectLogin");
		//3. MyBatis Handler 끊기
		mbh.closeHandler(ss);
		return sl;
	}//selectLogin
	
	//내 정보 조회
	public List<MyPageMyInfoDomain> selectInfo(String id) {
		List<MyPageMyInfoDomain> mid=null;
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		//2. 쿼리문 실행
		mid=ss.selectList("potato.mypageMapper.selectMypageInfo", id);
		//3. MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return mid;
	}//selectInfo
	
	//내 정보 수정
	public int updateInfo(MyPageMyInfoEditVO mieVO) {
		//1. MyBatis Handler 얻기
		//2. 쿼리문 실행
		//3. MyBatis Handler 끊기
		return 0;
	}//updateInfo
	
	//비밀번호 수정
	public int updatePw(MyPagePwEditVO peVO) {
		int cnt=0;
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		//2. 쿼리문 실행
		cnt=session.update("potato.mypageMapper.updatePw",peVO);
		
		if(cnt==1) {
			session.commit();
		}else {
			session.rollback();
		}
		//3. MyBatis Handler 끊기
		mbh.closeHandler(session);
		
		return cnt;
	}//updatePw
	
	//회원 탈퇴
	public int updateQuit(MyPageQuitVO qVO) {
		//1. MyBatis Handler 얻기
		//2. 쿼리문 실행
		//3. MyBatis Handler 끊기
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
		List<MyPageBookmarkDomain> mbd=null;
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		//2. 쿼리문 실행
		//System.out.println(ss.selectList("potato.mypageMapper.selectBookmark", id)+"findMe");
		mbd=ss.selectList("potato.mypageMapper.selectBookmark", id);
		//3. MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return mbd;
	}//selectBookmark
	
	//북마크한 휴게소 삭제(아이디, 휴게소 인덱스)(String id랑 restrea_idx가 bookmarkVO네..)
	public int delBookmark(MyPageBookmarkVO bVO) {
		int cnt=0;
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		//2. 쿼리문 실행
		cnt=ss.delete("potato.mypageMapper.updateBookmark",bVO);
		ss.commit();
		//3. MyBatis Handler 끊기
		mbh.closeHandler(ss);
		return cnt;
	}//delBookmark
	
}//class
