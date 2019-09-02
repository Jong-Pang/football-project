package kr.co.sist.football.teamlist.model.dto;

import java.util.Date;

public class MemberDTO {
	private int id;
	private int teamid;
	private String nickname;
	private int mannerscore;
	private String picpath;
	private int footcode;
	private String name;
	private String eamil;
	private String password;
	private int tel;
	private String position;
	private Date birthday;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTeamid() {
		return teamid;
	}
	public void setTeamid(int teamid) {
		this.teamid = teamid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getMannerscore() {
		return mannerscore;
	}
	public void setMannerscore(int mannerscore) {
		this.mannerscore = mannerscore;
	}
	public String getPicpath() {
		return picpath;
	}
	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}
	public int getFootcode() {
		return footcode;
	}
	public void setFootcode(int footcode) {
		this.footcode = footcode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEamil() {
		return eamil;
	}
	public void setEamil(String eamil) {
		this.eamil = eamil;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", teamid=" + teamid + ", nickname=" + nickname + ", mannerscore=" + mannerscore
				+ ", picpath=" + picpath + ", footcode=" + footcode + ", name=" + name + ", eamil=" + eamil
				+ ", password=" + password + ", tel=" + tel + ", position=" + position + ", birthday=" + birthday + "]";
	}
	
	
	
}
