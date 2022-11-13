package potato.vo;

import java.sql.Date;

public class DetailedReportVO {

	private String id_reporter, id_writer;
	private int review_idx, restarea_idx, report_idx;
	private Date report_date;
	
	public DetailedReportVO() {
		super();
	}

	public DetailedReportVO(String id_reporter, String id_writer, int review_idx, int restarea_idx, int report_idx,
			Date report_date) {
		super();
		this.id_reporter = id_reporter;
		this.id_writer = id_writer;
		this.review_idx = review_idx;
		this.restarea_idx = restarea_idx;
		this.report_idx = report_idx;
		this.report_date = report_date;
	}

	public String getId_reporter() {
		return id_reporter;
	}

	public void setId_reporter(String id_reporter) {
		this.id_reporter = id_reporter;
	}

	public String getId_writer() {
		return id_writer;
	}

	public void setId_writer(String id_writer) {
		this.id_writer = id_writer;
	}

	public int getReview_idx() {
		return review_idx;
	}

	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}

	public int getRestarea_idx() {
		return restarea_idx;
	}

	public void setRestarea_idx(int restarea_idx) {
		this.restarea_idx = restarea_idx;
	}

	public int getReport_idx() {
		return report_idx;
	}

	public void setReport_idx(int report_idx) {
		this.report_idx = report_idx;
	}

	public Date getReport_date() {
		return report_date;
	}

	public void setReport_date(Date report_date) {
		this.report_date = report_date;
	}

	@Override
	public String toString() {
		return "DetailedReportVO [id_reporter=" + id_reporter + ", id_writer=" + id_writer + ", review_idx="
				+ review_idx + ", restarea_idx=" + restarea_idx + ", report_idx=" + report_idx + ", report_date="
				+ report_date + "]";
	}
	
}//class
