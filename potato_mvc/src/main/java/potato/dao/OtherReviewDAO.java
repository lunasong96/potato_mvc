package potato.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
import potato.domain.OtherReviewDomain;
import potato.domain.OtherReviewReportDomain;
import potato.vo.OtherReviewReportVO;
import potato.vo.OtherReviewVO;

@Component
public class OtherReviewDAO {

	public String selOtherImg(OtherReviewVO orVO) {
		String otherImg = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		otherImg = ss.selectOne("potato.otherReview.selOtherImg", orVO);
		mbh.closeHandler(ss);
		return otherImg;
	}//selOtherImg
	
	public String selOtherNick(OtherReviewVO orVO) {
		String otherNick = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		otherNick = ss.selectOne("potato.otherReview.selOtherNick", orVO);
		mbh.closeHandler(ss);
		return otherNick;
	}//selOtherNick
	
	//총 리뷰 수
	public int selOtherRevCnt(OtherReviewVO orVO) {
		int otherRevCnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		otherRevCnt = ss.selectOne("potato.otherReview.selOtherRevCnt", orVO);
		mbh.closeHandler(ss);
		return otherRevCnt;
	}//selTotalRev
	
	//리뷰조회
	public List<OtherReviewDomain> selOtherRevAll(OtherReviewVO orVO){
		List<OtherReviewDomain> list= null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler(); 
		list = ss.selectList("potato.otherReview.selOtherRevAll", orVO);
		mbh.closeHandler(ss);
		return list;
	}//selOtherRevAll  
	
	//사용자신고 팝업창 띄우기
	public List<OtherReviewReportDomain> selOtherRevReport() {
		List<OtherReviewReportDomain> orrd=null;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		orrd=ss.selectList("potato.otherReview.selOtherRevReport");
		mbh.closeHandler(ss);
		return orrd;
	}//selRevReport
	
	//신고 접수
	public Integer insertOtherRevReport(OtherReviewReportVO orrVO) {
		Integer otherRevReport=0;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		otherRevReport=ss.selectOne("potato.otherReview.insertRevReport",orrVO);
		ss.commit();
		mbh.closeHandler(ss);
		return otherRevReport;
	}//insertRevReport
		
	//신고 접수 유무
	public Integer selOtherRevReportChk(OtherReviewReportVO orrVO) {
		Integer otherRevReportChk=0;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		otherRevReportChk=ss.selectOne("potato.otherReview.selOtherRevReportChk",orrVO);
		mbh.closeHandler(ss);
		return otherRevReportChk;
	}//selRevReportChk

}//class
