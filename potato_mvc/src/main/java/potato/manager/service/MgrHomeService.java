package potato.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import potato.manager.dao.MgrHomeDAO;

public class MgrHomeService {
	//의존성주입
	@Autowired(required = false)
	private MgrHomeDAO mhDAO;
	
	/**
	 * 오늘 신규가입 수
	 * @return
	 */
	public int searchNewMemCnt() {
		int NewMemCnt=0;
		
		NewMemCnt=mhDAO.selectNewMemCnt();
		System.out.println(NewMemCnt);
		
		return NewMemCnt;
	}//searchNewMemCnt
	
	//오늘 신고 수
	public int searchReportCnt() {		
		return 0;
	}
	
	//인기 휴게소(별점+리뷰)
	public String searchPopOne() {		
		return null;
	}
	
	//관심 휴게소(북마크)
	public String searchBookmark() {		
		return null;
	}
	
	//방문자 현황
	public List<Integer> searchVisitor() {		
		return null;
	}
	
	//방문자 현황(어제,오늘,총)
	public int searchVisitorCnt(int visitFlag) {		
		return 0;
	}
	
	//회원 현황(전체)
	public int searchAllMem(int visitFlag) {		
		return 0;
	}
	
	//회원 현황(탈퇴)
	public int searchQuitMem(int visitFlag) {		
		return 0;
	}
	
	//인기 휴게소 랭킹
	public List<String> searchPopAll() {		
		return null;
	}
}
