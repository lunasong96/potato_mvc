package potato.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.dao.OtherReviewDAO;
import potato.domain.OtherReviewDomain;
import potato.domain.OtherReviewUserDomain;
import potato.manager.domain.ReviewDomain;
import potato.manager.vo.SearchReviewVO;
import potato.vo.OtherReviewLikeVO;
import potato.vo.OtherReviewVO;

@Component
public class OtherReviewService {
	
	@Autowired(required = false)
	private OtherReviewDAO orDAO;
	
	//타사용자프로필
	public OtherReviewUserDomain searchOtherUser(String id) {
		return null;
	}
	
	// 전체 게시물수
	public int searchTotalReview(SearchReviewVO srVO) {
		int cnt = orDAO.selectTotalReview(srVO);
		return cnt;
	}

	// 마지막페이지수
	public int lastPage(int totalReview) {
		int lastPage = (int) Math.ceil((double) totalReview / 10);
		return lastPage;
	}

	// 현재페이지의 시작번호
	public int startNum(int curPage) {
		int startNum = curPage - (curPage - 1) % 3; // 3페이지씩보여준다
		return startNum;
	}

	// 한 페이지당 보여줄 페이지수, 만약 마지막페이보다 적다면 다시계산
	public int isLast(int lastPage, int startNum) {
		int isLast = 2; // 3페이직 씩 0,1,2
		if (startNum + 3 > lastPage) {
			isLast = lastPage - startNum;
		}
		return isLast;
	}
	
}
