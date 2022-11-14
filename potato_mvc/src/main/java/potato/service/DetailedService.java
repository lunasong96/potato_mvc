package potato.service;

import java.util.List;

import potato.domain.DetailedDomain;
import potato.domain.DetailedFoodDomain;
import potato.domain.DetailedReviewDomain;
import potato.vo.DetailedBookmarkVO;
import potato.vo.DetailedReviewVO;

public class DetailedService {

	//<휴게소 상세창>
	//휴게소 상세창 정보 불러오기
	public DetailedDomain getRestDetailed(int restarea_idx) {
		return null;
	}
	
	//휴게소 북마크 total
	public int getBookmarkTotal(int restarea_idx) {
		return 0;
	}
	
	//휴게소 북마크 여부
	public int getBookmarkChk(DetailedBookmarkVO dbVO) {
		return 0;
	}
	
	//휴게소 북마크 추가 (비동기)
	public void setBookmarkAdd(DetailedBookmarkVO dbVO) {
		
	}
	
	//휴게소 북마크 해제 (비동기)
	public void setBookmarkDel(DetailedBookmarkVO dbVO) {
		
	}
	
	//휴게소 별점 total
	public int getRateTotal(int restarea_idx) {
		return 0;
	}
	
	//휴게소 음식 정보
	public List<DetailedFoodDomain> getFoodDatailed(int restarea_idx) {
		return null;
	}
	
	//휴게소 편의시설아이콘
	public String getAmenityImg(int restarea_idx) {
		return null;
	}
	
	//<휴게소 리뷰>
	//리뷰 작성창 이동
	public DetailedReviewVO moveReviewWrite(String id) {
		return null;
	}
	
	//리뷰 수정창 이동
	public DetailedReviewVO moveReReviewWrite(String id) {
		return null;
	}
	
	//리뷰 총 total
	public int getReviewTotal(int restarea_idx) {
		return 0;
	}
	
	//리뷰 조회(비동기)
	public List<DetailedReviewDomain> getReviewAll(DetailedReviewVO drVO) {
		return null;
	}
	
	//페이징 처음 시작 
	public int getStartPageNum() {
		return 0;
	}
	
	//페이징 마지막 페이지
	public int getLastPageNum(int total) {
		return 0;
	}
	
	//페이징 기본 보여줄 수
	public int getPageScale() {
		return 0;
	}
	
	//타사용자 프로필 이동
	public DetailedReviewDomain moveOtherProfile(String id) {
		return null;
	}
	
	//리뷰 좋아요 total
	
	
	
}
