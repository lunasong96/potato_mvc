package potato.manager.dao;

import java.util.List;

public class MgrHomeDAO {
	
	//신규가입자
	public int selectNewMemberCnt() {
		return 0;
	}//selectNewMemberCnt
	
	//신고현황
	public int selectNewMember() {
		return 0;
	}//selectNewMember
	
	//인기휴게소(별점+리뷰)
	public String selectPopRest() {
		return null;
	}//selectPopRest
	
	//관심휴게소(북마크)
	public String selectBookmarkRest() {
		return null;
	}//selectBookmarkRest
	
	//방문자 수 현황
	public List<Integer> selectVisitor(){
		return null;
	}//selectVisitor
	
	//회원 수 현황
	public List<Integer> selectMember(){
		return null;
	}//selectMember
	
	//방문자 현황(어제,오늘)
	public int selectDayVisitor(int visitFlag) {
		return 0;
	}//selectDayVisitor
	
	//방문자 현황(주간)
	public int selectWeekVisitor() {
		return 0;
	}//selectWeekVisitor
	
	//회원 현황
	public int selectMemberStatus(int visitFlag) {
		return 0;
	}//selectMemberStatus
	
	//휴게소랭킹
	public List<String> selectRestRank(){
		return null;
	}//selectRestRank
}
