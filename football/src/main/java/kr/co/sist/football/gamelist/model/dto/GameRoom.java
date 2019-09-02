package kr.co.sist.football.gamelist.model.dto;

import java.sql.Date;

public class GameRoom {
  
	private String id;
	private String name;
	private Date gameDate;
	private int duration;
	private String locationName;
	private String location;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getGame_date() {
		return gameDate;
	}
	public void setGame_date(Date gameDate) {
		this.gameDate = gameDate;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getLocation_name() {
		return locationName;
	}
	public void setLocation_name(String locationName) {
		this.locationName = locationName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	@Override
	public String toString() {
		return "GameRoom [id=" + id + ", name=" + name + ", gameDate=" + gameDate + ", duration=" + duration
				+ ", locationName=" + locationName + ", location=" + location + "]";
	}

}
