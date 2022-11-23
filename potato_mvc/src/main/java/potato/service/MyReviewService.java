package potato.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.dao.MyReviewDAO;
import potato.domain.MyReviewDomain;
import potato.manager.vo.SearchReviewVO;
import potato.vo.MyReviewVO;
import potato.vo.OtherReviewVO;

@Component
public class MyReviewService {
	
	@Autowired(required = false)
	private MyReviewDAO mrDAO;
	
	//사용자이미지
	public String searchMyImg(MyReviewVO mrVO){
		String  img = mrDAO.selMyImg(mrVO);
		return img;
	}
	
	//사용자닉
	public String searchMyNick(MyReviewVO mrVO){
		String  nick = mrDAO.selMyNick(mrVO);
		return nick;
	}
	
	//My리뷰조회
	public List<MyReviewDomain> searchMyRevAll(MyReviewVO mrVO){
		List<MyReviewDomain> mlist = mrDAO.selMyRevAll(mrVO);
		return mlist;
	}
	
	//Like리뷰조회
	public List<MyReviewDomain> searchLikeRevAll(MyReviewVO mrVO){
		List<MyReviewDomain> llist = mrDAO.selLikeRevAll(mrVO);
		return llist;
	}
	
	//전체 게시물수
	public int searchTotalReview(MyReviewVO mrVO) {
		int cnt = mrDAO.selTotalReview(mrVO);
		return cnt;
	}

	// 마지막페이지수
	public int lastPage(int totalReview) {
		int lastPage = (int) Math.ceil((double) totalReview / 3);
		return lastPage;
	}

	// 현재페이지의 시작번호
	public int startNum(int curPage) {
		int startNum = curPage - (curPage - 1) % 3; // 3페이지씩보여준다
		return startNum;
	}

	// 한 페이지당 보여줄 페이지 수, 마지막 페이지보다 적다면 다시 계산
	public int isLast(int lastPage, int startNum) {
		int isLast = 2; // 3페이직 씩 0,1,2
		if (startNum + 3 > lastPage) {
			isLast = lastPage - startNum;
		}
		System.out.println(startNum+" "+ lastPage +" "+ isLast);
		
		return isLast;
	}
	
}//class
