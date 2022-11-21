package potato.domain;

public class UserDomain {
	private String id, nick;

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

	@Override
	public String toString() {
		return "UserDomain [id=" + id + ", nick=" + nick + "]";
	}
	
}
