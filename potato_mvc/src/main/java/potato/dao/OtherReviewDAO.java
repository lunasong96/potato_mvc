package potato.dao;

import java.util.List;

import potato.domain.OtherReviewReportDomain;
import potato.domain.OtherReviewUserDomain;
import potato.manager.domain.ReviewDomain;
import potato.vo.OtherReviewLikeVO;
import potato.vo.OtherReviewVO;

public class OtherReviewDAO {
	
	//타사용자 정보
	public OtherReviewUserDomain  selectOtherUser(String id) {
		return null;
	}
	
	//사용자리뷰건수
	public int selectReviewCnt(String id) {
		return 0;
	}
	
	//전체리뷰조회
	public List<ReviewDomain> selectReviewAll(OtherReviewVO orVO){
		return null;
	}

	//페이징처리
	public int selectTotalReview(OtherReviewLikeVO lVO) {
		return 0;
	}
	
	//좋아요 수
	public int selectLikeCnt(OtherReviewLikeVO lVO) {
		return 0;
	}
	
	//신고 창이동
	public OtherReviewReportDomain selectReportOption() {
		return null;
	}
	 

}
