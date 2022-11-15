package potato.manager.vo;

import org.springframework.web.bind.annotation.RequestParam;

public class SearchReviewVO {
	private String keyword;
	private int searchType, dateOrderFlag, reportOrderFlag, pageFlag;
	


	public String getKeyword() {
		return keyword;
	}


	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}


	public int getSearchType() {
		return searchType;
	}


	public void setSearchType(int searchType) {
		this.searchType = searchType;
	}


	public int getDateOrderFlag() {
		return dateOrderFlag;
	}


	public void setDateOrderFlag(@RequestParam(required=false,defaultValue="1") int dateOrderFlag) {
		this.dateOrderFlag = dateOrderFlag;
	}


	public int getReportOrderFlag() {
		return reportOrderFlag;
	}


	public void setReportOrderFlag(int reportOrderFlag) {
		this.reportOrderFlag = reportOrderFlag;
	}


	public int getPageFlag() {
		return pageFlag;
	}


	public void setPageFlag(@RequestParam(required=false,defaultValue ="1") int pageFlag) {
		this.pageFlag = pageFlag;
	}


	@Override
	public String toString() {
		return "SearchReviewVO [keyword=" + keyword + ", searchType=" + searchType + ", dateOrderFlag=" + dateOrderFlag
				+ ", reportOrderFlag=" + reportOrderFlag + ", pageFlag=" + pageFlag + "]";
	}
	
	
}
