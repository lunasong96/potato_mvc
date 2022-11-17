package potato.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
import potato.manager.domain.ReviewDomain;
import potato.manager.vo.ReviewVO;
import potato.manager.vo.SearchReviewVO;

@Component
public class MgrReviewDAO {
	
	public List<ReviewDomain> selectReview(SearchReviewVO srVO) {
		List<ReviewDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		list = ss.selectList("potato.manager.review.selectReview", srVO);
		mbh.closeHandler(ss);
		
		return list;
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
