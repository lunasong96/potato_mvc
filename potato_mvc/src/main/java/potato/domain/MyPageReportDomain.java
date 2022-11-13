package potato.domain;

public class MyPageReportDomain {
	private String id,nick;
	private int report_idx;
	
	public MyPageReportDomain() {
		super();
	}

	public MyPageReportDomain(String id, String nick, int report_idx) {
		super();
		this.id = id;
		this.nick = nick;
		this.report_idx = report_idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public int getReport_idx() {
		return report_idx;
	}

	public void setReport_idx(int report_idx) {
		this.report_idx = report_idx;
	}

	@Override
	public String toString() {
		return "MyPageReportDomain [id=" + id + ", nick=" + nick + ", report_idx=" + report_idx + "]";
	}
	
}
