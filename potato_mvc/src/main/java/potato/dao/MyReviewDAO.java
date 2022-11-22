package potato.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
import potato.domain.MyReviewDomain;
import potato.vo.MyReviewVO;

@Component
public class MyReviewDAO {
	
	/**
	 * ∏Æ∫‰¡∂»∏
	 * @param mrVO
	 * @return
	 */
	public List<MyReviewDomain> selMyRevAll(MyReviewVO mrVO){
		List<MyReviewDomain> list=null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler(); 
		list = ss.selectOne("potato.myReview.selMyRevAll", mrVO);
		mbh.closeHandler(ss);
		return list;		
	}

}
