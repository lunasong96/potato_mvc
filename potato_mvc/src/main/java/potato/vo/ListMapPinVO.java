package potato.vo;

public class ListMapPinVO {
	private int line_idx,lng,lat;
	private String name;
	
	public ListMapPinVO() {

	}

	public ListMapPinVO(int line_idx, int lng, int lat, String name) {
		this.line_idx = line_idx;
		this.lng = lng;
		this.lat = lat;
		this.name = name;
	}

	public int getLine_idx() {
		return line_idx;
	}

	public void setLine_idx(int line_idx) {
		this.line_idx = line_idx;
	}

	public int getLng() {
		return lng;
	}

	public void setLng(int lng) {
		this.lng = lng;
	}

	public int getLat() {
		return lat;
	}

	public void setLat(int lat) {
		this.lat = lat;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "ListMapPinVO [line_idx=" + line_idx + ", lng=" + lng + ", lat=" + lat + ", name=" + name + "]";
	}
	
}
