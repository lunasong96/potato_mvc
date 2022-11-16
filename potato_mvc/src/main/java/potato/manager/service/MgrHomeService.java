package potato.manager.service;

import java.util.List;

public class MgrHomeService {
	
	//오늘 신규가입 수
	public int searchNewMem() {
		return 0;
	}
	
	//오늘 신고 건수
	public int searchReportCnt() {		
		return 0;
	}
	
	//인기휴게소(별점+리뷰순)
	public String searchPopRest() {		
		return null;
	}
	
	//관심휴게소(북마크순)
	public String searchBookmarkRest() {		
		return null;
	}
	
	//방문자 현황
	public List<Integer> searchVisitor() {		
		return null;
	}
	
	//회원 현황
	public List<Integer> searchMember() {		
		return null;
	}
	
	//방문자 현황(어제,오늘)
	public int searchDayVisitor(int visitFlag) {		
		return 0;
	}
	
	//방문자 현황(주간)
	public int searchWeekVisitor(int visitFlag) {		
		return 0;
	}
	
	//회원현황
	public int searchMemberStatus(int visitFlag) {		
		return 0;
	}
	
	//휴게소랭킹
	public List<String> searchRestRank() {		
		return null;
	}
}
