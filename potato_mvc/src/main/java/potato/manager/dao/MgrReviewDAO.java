package potato.manager.dao;

import java.util.List;

import potato.manager.domain.ReviewDomain;
import potato.manager.vo.ReviewVO;
import potato.manager.vo.SearchReviewVO;

public class MgrReviewDAO {
	
	public List<ReviewDomain> selectReview(SearchReviewVO srVO) {
		
		return null;
	}
	
	public int selectTotalReview(SearchReviewVO srVO) {
		
		return 0;
	}
	
	public List<String> selectKeywordList(String keyword) {
		
		return null;
	}
	
	public int deleteMultipleReview(List<ReviewVO> list) {
		
		return 0;
	}
	
	public ReviewDomain selectReviewDetail(ReviewVO rVO) {
		
		return null;
	}
	
	public int deleteReview(ReviewVO rVO) {
		
		return 0;
	}
	
	
}
