package potato.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.dao.UserReviewDAO;
import potato.domain.MyPageReportDomain;
import potato.domain.MyReviewDomain;
import potato.vo.MyPageMyReviewVO;
import potato.vo.MyReviewVO;
import potato.vo.MypageLikeReviewVO;
import potato.vo.MypageReportVO;

@Component
public class UserReviewService {
	
	@Autowired(required = false)
	private UserReviewDAO urDAO;
	
///////////////////네비바////////////////////	
	//사용자이미지
	public String searchMyImg(MyReviewVO mrVO){
		String  img = urDAO.selMyImg(mrVO);
		return img;
	}
	//사용자닉
	public String searchMyNick(MyReviewVO mrVO){
		String  nick = urDAO.selMyNick(mrVO);
		return nick;
	}
///////////////////사용자리뷰조회////////////////////	
	//My리뷰조회
	public List<MyReviewDomain> searchMyRevAll(MyReviewVO mrVO){
		List<MyReviewDomain> mlist = urDAO.selMyRevAll(mrVO);
		return mlist;
	}

///////////////////좋아요한리뷰조회////////////////////
	//Like리뷰조회
	public List<MyReviewDomain> searchLikeRevAll(MyReviewVO mrVO){
		List<MyReviewDomain> llist = urDAO.selLikeRevAll(mrVO);
		return llist;
	}

/////좋아요/////	
	//리뷰 좋아요 추가
	public String getLikeAdd(MypageLikeReviewVO mplrVO) {
		String addlike=urDAO.insertLikeAdd(mplrVO);
		return addlike;
	}
		
	//리뷰 좋아요 삭제
	public String getLikeDel(MypageLikeReviewVO mplrVO) {
		String delLike=urDAO.delLike(mplrVO);
		return delLike;
	}
	
/////신고/////		
	//사용자신고 팝업창 띄우기
	public List<MyPageReportDomain> searchRevReport() {
		List<MyPageReportDomain> mprd=null;
		mprd=urDAO.selRevReport();
		return mprd;
	}

	//신고 접수
	public Integer setRevReport(MypageReportVO mprVO) {
		Integer revReport=0;
		revReport=urDAO.insertRevReport(mprVO);
		return revReport;
	}
	
	//신고 접수 유무
	public Integer searchRevReportChk(MypageReportVO mprVO) {
		Integer revReportChk=0;
		revReportChk=urDAO.selRevReportChk(mprVO);
		return revReportChk;
	}

/////수정/////
	//리뷰 수정창 이동
	public MyReviewDomain searchRevEdit(MyPageMyReviewVO mpmrVO) {
		MyReviewDomain mrd=urDAO.selRevEdit(mpmrVO);
		return mrd;
	}
	
/////삭제/////		
	//리뷰 삭제
	public String getRevDel(MyPageMyReviewVO mpmrVO) {
		String delmyRev=null;
		delmyRev=urDAO.delmyRev(mpmrVO);
		return delmyRev;
	}
///////////////////페이징////////////////////		
	
	//내가쓴 리뷰 전체 게시물수
	public int searchTotalReview(MyReviewVO mrVO) {
		int cnt = urDAO.selTotalReview(mrVO);
		return cnt;
	}
	
	//내가 좋아요한 리뷰 전체 게시물수
	public int searchTotalLikedReview(MyReviewVO mrVO) {
		int cnt = urDAO.selTotalLikedReview(mrVO);
		return cnt;
	}
	

	// 마지막페이지수
	public int lastPage(int totalReview) {
		int lastPage = (int) Math.ceil((double) totalReview / 5);
		return lastPage;
	}

	// 현재페이지의 시작번호
	public int startNum(int curPage) {
		int startNum = curPage - (curPage - 1) % 3; // 3페이지씩보여준다
		return startNum;
	}

	// 한 페이지당 보여줄 페이지 수, 마지막 페이지보다 적다면 다시 계산
	public int isLast(int lastPage, int startNum) {
		int isLast = 2; // 3페이직 씩 0,1,2
		if (startNum + 3 > lastPage) {
			isLast = lastPage - startNum;
		}
		System.out.println(startNum+" "+ lastPage +" "+ isLast);
		
		return isLast;
	}
}//class
