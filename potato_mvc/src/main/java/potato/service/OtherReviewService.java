package potato.service;

import java.util.List;

import potato.domain.OtherReviewUserDomain;
import potato.manager.domain.ReviewDomain;
import potato.manager.vo.SearchReviewVO;
import potato.vo.OtherReviewLikeVO;
import potato.vo.OtherReviewVO;

public class OtherReviewService {
	
	//타사용자프로필
	public OtherReviewUserDomain searchOtherUser(String id) {
		return null;
	}
	
	//리뷰 수
	public int searchReviewCnt(String id) {
		return 0;
	}
	
	//리뷰조회
	public List<ReviewDomain> searchReviewAll(OtherReviewVO orVO){
		return null;
	}

	//페이징
	public int searchTotalReview(SearchReviewVO srVO) {
		
		return 0;
	}
	
	public int lastPage(int totalReview) {
		
		return 0;
	}
	
	public int startNum(int curPage) {
		
		return 0;
	}
	
	//내가 원하는 보여줄 페이지 수를 먼저 넣고 만약에 초과할 경우 isLast를 매개변수로 새로 set
	public int isLast(int lastPage, int startNum) {
		
		return 0;
	}
	
	//좋아요 수
	public int searchLikeCnt(OtherReviewLikeVO orlVO) {
		return 0;
	}
	
}
