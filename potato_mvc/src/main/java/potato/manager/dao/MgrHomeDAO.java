package potato.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import potato.dao.config.MyBatisHandler;

public class MgrHomeDAO {

	/**
	 * 오늘 신규가입 수
	 * 
	 * @return
	 */
	/*
	 * public int selectNewMemCnt() { int newMemCnt=0;
	 * 
	 * //1. MyBatis Handler(SqlSession) 얻기 MyBatisHandler
	 * mbh=MyBatisHandler.getInstance(); SqlSession ss=mbh.getHandler(); //2.쿼리문 실행
	 * : 입력값 없이 총 레코드의 수를 얻자
	 * newMemCnt=ss.selectOne("potato.mgrHomeMapper.selectNewMemCnt"); //3. MyBatis
	 * Handler 끊기 mbh.closeHandler(ss);
	 * 
	 * return newMemCnt; }//selectNewMemCnt
	 * 
	 *//**
		 * 오늘 신고 수
		 * 
		 * @return
		 */
	/*
	 * public int selectReportCnt() { int reportCnt=0;
	 * 
	 * //1. MyBatis Handler(SqlSession) 얻기 MyBatisHandler
	 * mbh=MyBatisHandler.getInstance(); SqlSession ss=mbh.getHandler(); //2.쿼리문 실행
	 * : 입력값 없이 총 레코드의 수를 얻자
	 * reportCnt=ss.selectOne("potato.mgrHomeMapper.selectReportCnt"); //3. MyBatis
	 * Handler 끊기 mbh.closeHandler(ss);
	 * 
	 * return reportCnt; }//selectReportCnt
	 * 
	 *//**
		 * 인기 휴게소(별점+리뷰)
		 * 
		 * @return
		 */
	/*
	 * public String selectPopOne() { String popOne=null;
	 * 
	 * //1. MyBatis Handler(SqlSession) 얻기 MyBatisHandler
	 * mbh=MyBatisHandler.getInstance(); SqlSession ss=mbh.getHandler(); //2.쿼리문 실행
	 * : 입력값 없이 총 레코드의 수를 얻자
	 * popOne=ss.selectOne("potato.mgrHomeMapper.selectPopOne"); //3. MyBatis
	 * Handler 끊기 mbh.closeHandler(ss);
	 * 
	 * return popOne; }//selectPopOne
	 * 
	 *//**
		 * 관심 휴게소(북마크)
		 * 
		 * @return
		 */
	/*
	 * public String selectBookmark() { String bookmark=null;
	 * 
	 * //1. MyBatis Handler(SqlSession) 얻기 MyBatisHandler
	 * mbh=MyBatisHandler.getInstance(); SqlSession ss=mbh.getHandler(); //2.쿼리문 실행
	 * : 입력값 없이 총 레코드의 수를 얻자
	 * bookmark=ss.selectOne("potato.mgrHomeMapper.selectBookmark"); //3. MyBatis
	 * Handler 끊기 mbh.closeHandler(ss);
	 * 
	 * return bookmark; }//selectBookmark
	 * 
	 * //방문자 수 현황 public List<Integer> selectVisitor(){ return null;
	 * }//selectVisitor
	 * 
	 * //회원 수 현황 public List<Integer> selectMember(){ return null; }//selectMember
	 * 
	 * //방문자 현황(어제,오늘) public int selectDayVisitor(int visitFlag) { return 0;
	 * }//selectDayVisitor
	 * 
	 * //방문자 현황(주간) public int selectWeekVisitor() { return 0; }//selectWeekVisitor
	 * 
	 *//**
		 * 회원 현황(전체)
		 * 
		 * @return
		 */
	/*
	 * public int selectAllMem() { int AllMemCnt=0;
	 * 
	 * //1. MyBatis Handler(SqlSession) 얻기 MyBatisHandler
	 * mbh=MyBatisHandler.getInstance(); SqlSession ss=mbh.getHandler(); //2.쿼리문 실행
	 * : 입력값 없이 총 레코드의 수를 얻자
	 * AllMemCnt=ss.selectOne("potato.mgrHomeMapper.selectAllMem"); //3. MyBatis
	 * Handler 끊기 mbh.closeHandler(ss);
	 * 
	 * return AllMemCnt; }//selectAllMem
	 * 
	 *//**
		 * 회원 현황(전체)
		 * 
		 * @return
		 */
	/*
	 * public int selectQuitMem() { int QuitMemCnt=0;
	 * 
	 * //1. MyBatis Handler(SqlSession) 얻기 MyBatisHandler
	 * mbh=MyBatisHandler.getInstance(); SqlSession ss=mbh.getHandler(); //2.쿼리문 실행
	 * : 입력값 없이 총 레코드의 수를 얻자
	 * QuitMemCnt=ss.selectOne("potato.mgrHomeMapper.selectQuitMem"); //3. MyBatis
	 * Handler 끊기 mbh.closeHandler(ss);
	 * 
	 * return QuitMemCnt; }//selectQuitMem
	 * 
	 * //휴게소랭킹 public List<String> selectPopAll(){ List<String> list=null;
	 * 
	 * //1. MyBatis Handler(SqlSession) 얻기 MyBatisHandler
	 * mbh=MyBatisHandler.getInstance(); SqlSession ss=mbh.getHandler(); //2.쿼리문 실행
	 * : 입력값 없이 총 레코드의 수를 얻자 list=ss.selectOne("potato.mgrHomeMapper.selectPopAll");
	 * //3. MyBatis Handler 끊기 mbh.closeHandler(ss);
	 * 
	 * return list; }//selectPopAll
	 */}
