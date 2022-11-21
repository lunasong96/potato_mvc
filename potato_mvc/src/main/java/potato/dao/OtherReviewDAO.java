package potato.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
import potato.domain.OtherReviewDomain;
import potato.manager.domain.ReviewDomain;
import potato.vo.OtherReviewVO;

@Component
public class OtherReviewDAO {

	/**
	 * ¸®ºäÁ¶È¸
	 * @param orVO
	 * @return
	 */
	public List<OtherReviewDomain> selOtherRevAll(OtherReviewVO orVO){
		List<OtherReviewDomain> list= null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler(); 
		list = ss.selectList("potato.otherReview.selOtherRevAll", orVO);
		mbh.closeHandler(ss);
		return list;
	}//selOtherRevAll   
	
	/**
	 * ¸®ºä¼ö
	 * @param id
	 * @return
	 */
	public int selOtherRevCnt(String id) {
		int otherRevCnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		otherRevCnt = ss.selectOne("potato.otherReview.selOtherRevCnt", id);
		mbh.closeHandler(ss);
		return otherRevCnt;
	}//selOtherRevCnt
	
	

}//class
