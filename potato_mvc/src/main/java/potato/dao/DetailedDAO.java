package potato.dao;

import java.util.List;

import potato.domain.DetailedAmenityDomain;
import potato.domain.DetailedDomain;
import potato.domain.DetailedFoodDomain;
import potato.domain.DetailedReportDomain;
import potato.domain.DetailedReviewDomain;
import potato.vo.DetailedBookmarkVO;
import potato.vo.DetailedLikeVO;
import potato.vo.DetailedReportVO;
import potato.vo.DetailedReviewVO;

public class DetailedDAO {
	
	//<휴게소 상세창>
	//휴게소 상세창 정보 불러오기
	public DetailedDomain selectRestDetailed(int restarea_idx) {
		return null;
	}
	
	//휴게소 북마크 total
	public int selectBookmarkTotal(int restarea_idx) {
		return 0;
	}
	
	//휴게소 북마크 여부
	public int selectBookmarkChk(DetailedBookmarkVO dbVO) {
		return 0;
	}
	
	//휴게소 북마크 추가
	public int insertBookmarkAdd(DetailedBookmarkVO dbVO) {
		return 0;
	}
	
	//휴게소 북마크 해제
	public int deleteBookmarkDel(DetailedBookmarkVO dbVO) {
		return 0;
	}
	
	//휴게소 별점 total
	public int selectRateTotal(int restarea_idx) {
		return 0;
	}
	
	//휴게소 음식 정보
	public List<DetailedFoodDomain> selectFoodDatailed(int restarea_idx) {
		return null;
	}
	
	//휴게소 편의시설아이콘
	public List<DetailedAmenityDomain> selectAmenityImg(int restarea_idx) {
		return null;
	}
	
	//<휴게소 리뷰>
	//리뷰 작성창 이동
	public DetailedReviewDomain selectReviewWrite(int restarea_idx) {
		return null;
	}
	
	//리뷰 수정창 이동
	public DetailedReviewDomain selectReReviewWrite(DetailedReviewVO drVO) {
		return null;
	}
	
	//리뷰 총 total
	public int selectReviewTotal(int restarea_idx) {
		return 0;
	}
	
	//리뷰 조회
	public List<DetailedReviewDomain> selectReviewAll(DetailedReviewVO drVO) {
		return null;
	}
	
	//타사용자 프로필 이동
	public DetailedReviewDomain selectOtherProfile(String id) {
		return null;
	}
	
	//리뷰 좋아요 total X
	public int selectLikeTotal(DetailedLikeVO dlVO) {
		return 0;
	} 
	
	//리뷰 좋아요 추가
	public int insertLikeAdd(DetailedLikeVO dlVO) {
		return 0;
	}
	
	//리뷰 좋아요 삭제
	public int deleteLikeDel(DetailedLikeVO dlVO) {
		return 0;
	}
	
	//리뷰 삭제
	public int deleteReviewDel(DetailedReviewVO drVO) {
		return 0;
	}
	
	//<신고창>
	//신고창 접속
	public List<DetailedReportDomain> selectReportPopup() {
		return null;
	}
	
	//신고 접수
	public int insertReportPopup(DetailedReportVO drVO) {
		return 0;
	}
}
