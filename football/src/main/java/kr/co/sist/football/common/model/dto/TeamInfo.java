package kr.co.sist.football.common.model.dto;

public class TeamInfo {
	private int id;
	private String name;
	private String logoPath;
	private int presentNum;
	private int maxNum;
	private int uniformColorCode;
	private int strengthCode;
	private String location;
	private String formation;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLogoPath() {
		return logoPath;
	}

	public void setLogoPath(String logoPath) {
		this.logoPath = logoPath;
	}

	public int getMaxNum() {
		return maxNum;
	}

	public void setMaxNum(int maxNum) {
		this.maxNum = maxNum;
	}

	public int getPresentNum() {
		return presentNum;
	}

	public void setPresentNum(int presentNum) {
		this.presentNum = presentNum;
	}

	public int getUniformColorCode() {
		return uniformColorCode;
	}

	public void setUniformColorCode(int uniformColorCode) {
		this.uniformColorCode = uniformColorCode;
	}

	public int getStrengthCode() {
		return strengthCode;
	}

	public void setStrengthCode(int strengthCode) {
		this.strengthCode = strengthCode;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getFormation() {
		return formation;
	}

	public void setFormation(String formation) {
		this.formation = formation;
	}

	@Override
	public String toString() {
		return "Teaminfo [id=" + id + ", name=" + name + ", logoPath=" + logoPath + ", maxNum=" + maxNum
				+ ", presentNum=" + presentNum + ", uniformColorCode=" + uniformColorCode + ", strengthCode="
				+ strengthCode + ", location=" + location + ", formation=" + formation + "]";
	}
}
