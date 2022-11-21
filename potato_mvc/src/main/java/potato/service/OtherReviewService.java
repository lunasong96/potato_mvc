package potato.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.dao.OtherReviewDAO;
import potato.domain.OtherReviewDomain;
import potato.vo.OtherReviewVO;

@Component
public class OtherReviewService {
	
	@Autowired(required = false)
	private OtherReviewDAO orDAO;
	
	//¸®ºäÁ¶È¸
	public List<OtherReviewDomain> searchOtherRevAll(OtherReviewVO orVO){
		List<OtherReviewDomain> list = orDAO.selOtherRevAll(orVO);
		return list;
	}//searchOtherRevAll
	
	//¸®ºä¼ö
	public int searchOtherRevCnt(String id) {
		int revCnt=orDAO.selOtherRevCnt(id);
		return revCnt;
	}//searchRevCnt
	
	
}//class
