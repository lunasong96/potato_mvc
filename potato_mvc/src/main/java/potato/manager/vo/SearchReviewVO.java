package potato.manager.vo;

public class SearchReviewVO {
	private String keyword;
	private int searchType, dateOrderFlag, reportOrderFlag, pageFlag;
	
	
	public SearchReviewVO() {
		// TODO Auto-generated constructor stub
	}


	public SearchReviewVO(String keyword, int searchType, int dateOrderFlag, int reportOrderFlag, int pageFlag) {
		this.keyword = keyword;
		this.searchType = searchType;
		this.dateOrderFlag = dateOrderFlag;
		this.reportOrderFlag = reportOrderFlag;
		this.pageFlag = pageFlag;
	}


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


	public void setDateOrderFlag(int dateOrderFlag) {
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


	public void setPageFlag(int pageFlag) {
		this.pageFlag = pageFlag;
	}


	@Override
	public String toString() {
		return "SearchReviewVO [keyword=" + keyword + ", searchType=" + searchType + ", dateOrderFlag=" + dateOrderFlag
				+ ", reportOrderFlag=" + reportOrderFlag + ", pageFlag=" + pageFlag + "]";
	}
	
	
}
