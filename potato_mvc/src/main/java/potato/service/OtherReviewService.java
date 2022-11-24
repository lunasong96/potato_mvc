package potato.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.dao.OtherReviewDAO;
import potato.domain.OtherReviewDomain;
import potato.domain.OtherReviewReportDomain;
import potato.vo.OtherReviewReportVO;
import potato.vo.OtherReviewVO;

@Component
public class OtherReviewService {
	
	@Autowired(required = false)
	private OtherReviewDAO orDAO;
	
	//사용자이미지
	public String searchOtherImg(OtherReviewVO orVO){
		String  img = orDAO.selOtherImg(orVO);
		return img;
	}
	
	//사용자닉
	public String searchOtherNick(OtherReviewVO orVO){
		String  nick = orDAO.selOtherNick(orVO);
		return nick;
	}
	
	//리뷰조회
	public List<OtherReviewDomain> searchOtherRevAll(OtherReviewVO orVO){
		List<OtherReviewDomain> list = orDAO.selOtherRevAll(orVO);
		return list;
	}
	
	//사용자신고 팝업창 띄우기
	public List<OtherReviewReportDomain> searchOtherRevReport() {
		List<OtherReviewReportDomain> ord=null;
		ord=orDAO.selOtherRevReport();
		return ord;
	}
	
	//신고 접수
	public Integer addOtherRevReport(OtherReviewReportVO orrVO) {
		Integer otherRevReport=0;
		otherRevReport=orDAO.insertOtherRevReport(orrVO);
		return otherRevReport;
	}
	
	//신고 접수 유무
	public Integer searchRevReportChk(OtherReviewReportVO orrVO) {
		Integer otherRevReportChk=0;
		otherRevReportChk=orDAO.selOtherRevReportChk(orrVO);
		return otherRevReportChk;
	}
	
	
	//전체리뷰수
	public int searchOtherRev(OtherReviewVO orVO) {
		int otherRev=orDAO.selOtherRev(orVO);
		return otherRev;
	}//searchOtherRev

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
