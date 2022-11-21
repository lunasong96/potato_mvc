package potato.domain;

/**
 *	로그인 성공 했을 시 불러올 유저 데이터
 *	세션에 저장된다.
 * @author user
 */
public class UserDomain {
	private String id, nick, img;

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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "UserDomain [id=" + id + ", nick=" + nick + ", img=" + img + "]";
	}

}
