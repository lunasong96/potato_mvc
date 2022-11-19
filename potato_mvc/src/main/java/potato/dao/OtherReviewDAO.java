package potato.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
import potato.domain.OtherReviewReportDomain;
import potato.domain.OtherReviewUserDomain;
import potato.manager.domain.ReviewDomain;
import potato.manager.vo.ReviewVO;
import potato.manager.vo.SearchReviewVO;
import potato.vo.OtherReviewLikeVO;
import potato.vo.OtherReviewVO;

@Component
public class OtherReviewDAO {
	
	/**
	 * 사용자 닉네임,프로필이미지 조회
	 * @param id
	 * @return
	 */
	public OtherReviewUserDomain selOtherInfo(String id) {
		OtherReviewUserDomain orud=null;
		
	MyBatisHandler mbh = MyBatisHandler.getInstance();
	SqlSession ss = mbh.getHandler();
	orud = ss.selectOne("potato.otherReview.selOtherInfo", id);
	mbh.closeHandler(ss);
		
		return orud;
	}//selotherInfo
	
	/**
	 * 사용자 리뷰 수
	 * @param id
	 * @return
	 */
	public int selRevCnt(String id) {
		int revCnt=0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		revCnt = ss.selectOne("potato.otherReview.selRevCnt", id);
		mbh.closeHandler(ss);
		
		return revCnt;
	}//selRevCnt
	
	/**
	 * 사용자 리뷰 조회
	 * @param orVO
	 * @return
	 */
	public List<ReviewDomain> selRevAll(OtherReviewVO orVO){
		List<ReviewDomain> list= null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		list = ss.selectOne("potato.otherReview.selRevAll", orVO);
		mbh.closeHandler(ss);
		
		return list;
	}//selRevAll
	
	/**
	 * 총 게시물 수를 구하기
	 * @param srVO
	 * @return
	 */
	public int selectTotalReview(SearchReviewVO srVO) {
		int cnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		cnt = ss.selectOne("potato.manager.review.selectTotalReview", srVO);
		
		return cnt;
	}
	
	
	/**
	 * 리뷰상세창 데이터
	 * @param rVO
	 * @return
	 */
	public ReviewDomain selectReviewDetail(ReviewVO rVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		ReviewDomain rd = ss.selectOne("potato.manager.review.selectReviewDetail", rVO);
		return rd;
	}
	
	
	

}
