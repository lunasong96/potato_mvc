package potato.vo;

public class SearchFlagVO {
	private String keyword;
	private int filterFlag, startNum, endNum;
	public SearchFlagVO() {
		
	}
	
	public SearchFlagVO(String keyword, int filterFlag, int startNum, int endNum) {
		this.keyword = keyword;
		this.filterFlag = filterFlag;
		this.startNum = startNum;
		this.endNum = endNum;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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

	@Override
	public String toString() {
		return "SearchFlagVO [keyword=" + keyword + ", filterFlag=" + filterFlag + ", startNum=" + startNum
				+ ", endNum=" + endNum + "]";
	}
	
}
