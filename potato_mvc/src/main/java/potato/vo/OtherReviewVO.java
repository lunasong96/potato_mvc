package potato.vo;

public class OtherReviewVO {
	private String id;
	private int dateOrderFlag=1, pageFlag=1, reportOrderFlag;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDateOrderFlag() {
		return dateOrderFlag;
	}
	public void setDateOrderFlag(int dateOrderFlag) {
		this.dateOrderFlag = dateOrderFlag;
	}
	public int getPageFlag() {
		return pageFlag;
	}
	public void setPageFlag(int pageFlag) {
		this.pageFlag = pageFlag;
	}
	public int getReportOrderFlag() {
		return reportOrderFlag;
	}
	public void setReportOrderFlag(int reportOrderFlag) {
		this.reportOrderFlag = reportOrderFlag;
	}
	
	@Override
	public String toString() {
		return "OtherReviewVO [id=" + id + ", dateOrderFlag=" + dateOrderFlag + ", pageFlag=" + pageFlag
				+ ", reportOrderFlag=" + reportOrderFlag + "]";
	}
	
}
