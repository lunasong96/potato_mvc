package potato.vo;

public class MyReviewVO {
	private String img, id;
	private int dateFlag, addFlag, restarea_idx, review_idx, dateOrderFlag=1, pageFlag=1, reportOrderFlag;
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDateFlag() {
		return dateFlag;
	}
	public void setDateFlag(int dateFlag) {
		this.dateFlag = dateFlag;
	}
	public int getAddFlag() {
		return addFlag;
	}
	public void setAddFlag(int addFlag) {
		this.addFlag = addFlag;
	}
	public int getRestarea_idx() {
		return restarea_idx;
	}
	public void setRestarea_idx(int restarea_idx) {
		this.restarea_idx = restarea_idx;
	}
	public int getReview_idx() {
		return review_idx;
	}
	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
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
		return "OtherReviewVO [img=" + img + ", id=" + id + ", dateFlag=" + dateFlag + ", addFlag=" + addFlag
				+ ", restarea_idx=" + restarea_idx + ", review_idx=" + review_idx + ", dateOrderFlag=" + dateOrderFlag
				+ ", pageFlag=" + pageFlag + ", reportOrderFlag=" + reportOrderFlag + "]";
	}
	
}