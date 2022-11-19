package potato.vo;

public class SearchFlagVO {
	private String keyword,url;
	private int filterFlag, startNum, endNum,totalPages;
	
	public SearchFlagVO() {
		
	}

	public SearchFlagVO(String keyword, String url, int filterFlag, int startNum, int endNum, int totalPages) {
		this.keyword = keyword;
		this.url = url;
		this.filterFlag = filterFlag;
		this.startNum = startNum;
		this.endNum = endNum;
		this.totalPages = totalPages;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getFilterFlag() {
		return filterFlag;
	}

	public void setFilterFlag(int filterFlag) {
		this.filterFlag = filterFlag;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	@Override
	public String toString() {
		return "SearchFlagVO [keyword=" + keyword + ", url=" + url + ", filterFlag=" + filterFlag + ", startNum="
				+ startNum + ", endNum=" + endNum + ", totalPages=" + totalPages + "]";
	}
	
}
