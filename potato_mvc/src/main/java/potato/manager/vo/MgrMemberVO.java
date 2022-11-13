package potato.manager.vo;

public class MgrMemberVO {
	private String id;
	private int memberType;
	
	public MgrMemberVO() {

	}
	
	public MgrMemberVO(String id, int memberType) {
		this.id = id;
		this.memberType = memberType;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getMemberType() {
		return memberType;
	}

	public void setMemberType(int memberType) {
		this.memberType = memberType;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", memberType=" + memberType + "]";
	}
	
	
}
