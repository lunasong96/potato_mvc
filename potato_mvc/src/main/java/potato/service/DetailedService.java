package potato.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.dao.DetailedDAO;
import potato.domain.DetailedAmenityDomain;
import potato.domain.DetailedDomain;
import potato.domain.DetailedFoodDomain;
import potato.domain.DetailedReportDomain;
import potato.domain.DetailedReviewDomain;
import potato.vo.DetailedBookmarkVO;
import potato.vo.DetailedLikeVO;
import potato.vo.DetailedReportVO;
import potato.vo.DetailedReviewVO;

@Component
public class DetailedService {

	@Autowired(required = false)
	private DetailedDAO dDAO;
	
	//<휴게소 상세창>
	//휴게소 상세창 정보 불러오기
	public DetailedDomain getRestDetailed(int restarea_idx) {
		DetailedDomain dd=null;
		dd=dDAO.selectRestDetailed(restarea_idx);
		return dd;
	}
	
	//휴게소 북마크 total
	public int getBookmarkTotal(int restarea_idx) {
		int booktotal=0;
		booktotal=dDAO.selectBookmarkTotal(restarea_idx);
		return booktotal;
	}
	
	//휴게소 북마크 여부
	public int getBookmarkChk(DetailedBookmarkVO dbVO) {
		return 0;
	}
	
	//휴게소 북마크 추가 (비동기)
	public int setBookmarkAdd(DetailedBookmarkVO dbVO) {
		return 0;
	}
	
	//휴게소 북마크 해제 (비동기)
	public int setBookmarkDel(DetailedBookmarkVO dbVO) {
		return 0;
	}
	
	//휴게소 별점 total
	public int getRateTotal(int restarea_idx) {
		int startotal=0;
		startotal=dDAO.selectRateTotal(restarea_idx);
		return startotal;
	}
	
	//휴게소 음식 정보
	public List<DetailedFoodDomain> getFoodDatailed(int restarea_idx) {
		List<DetailedFoodDomain> dfd=null;
		dfd=dDAO.selectFoodDatailed(restarea_idx);
		return dfd;
	}
	
	//휴게소 편의시설아이콘
	public List<DetailedAmenityDomain> getAmenityImg(int restarea_idx) {
		List<DetailedAmenityDomain> dad=null;
		dad=dDAO.selectAmenityImg(restarea_idx);
		return dad;
	}
	
	//<휴게소 리뷰>
	//리뷰 작성창 이동
	public DetailedReviewDomain moveReviewWrite(int restarea_idx) {
		return null;
	}
	
	//리뷰 수정창 이동
	public DetailedReviewDomain moveReReviewWrite(DetailedReviewVO drVO) {
		return null;
	}
	
	//리뷰 총 total
	public int getReviewTotal(int restarea_idx) {
		int reviewtotal=0;
		reviewtotal=dDAO.selectRateTotal(restarea_idx);
		return reviewtotal;
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
	public int getLikeTotal(DetailedLikeVO dlVO) {
		return 0;
	}
	
	//리뷰 좋아요 추가
	public int getLikeAdd(DetailedLikeVO dlVO) {
		return 0;
	}
	
	//리뷰 좋아요 삭제
	public int getLikeDel(DetailedLikeVO dlVO) {
		return 0;
	}
	
	//리뷰 삭제
	public int getReviewDel(DetailedReviewVO drVO) {
		return 0;
	}
	
	//<신고창>
	//신고창 접속
	public List<DetailedReportDomain> getReportPopup() {
		return null;
	}
	
	//신고 접수
	public int setReportPopup(DetailedReportVO drVO) {
		return 0;
	}
	
}
