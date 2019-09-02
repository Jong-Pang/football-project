package kr.co.sist.football.gamelist.model.dto;

public class GameLocation {
	private String name;
	private String location;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	@Override
	public String toString() {
		return "GameLocation [name=" + name + ", location=" + location + "]";
	}

}
