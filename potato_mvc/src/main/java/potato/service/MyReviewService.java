package potato.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.dao.MyReviewDAO;
import potato.domain.MyReviewDomain;
import potato.vo.MyReviewVO;

@Component
public class MyReviewService {
	
	@Autowired(required = false)
	private MyReviewDAO mrDAO;
	
	//∏Æ∫‰¡∂»∏
	public List<MyReviewDomain> searchMyRevAll(MyReviewVO mrVO){
		List<MyReviewDomain> list = mrDAO.selMyRevAll(mrVO);
		return list;
	}//searchOtherRevAll
	
	
}//class
