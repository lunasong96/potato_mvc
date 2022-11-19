package potato.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import potato.dao.config.MyBatisHandler;
import potato.domain.OtherReviewReportDomain;
import potato.domain.OtherReviewUserDomain;
import potato.manager.domain.ReviewDomain;
import potato.vo.OtherReviewLikeVO;
import potato.vo.OtherReviewVO;

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

}
