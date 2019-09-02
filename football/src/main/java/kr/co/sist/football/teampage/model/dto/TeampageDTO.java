package kr.co.sist.football.teampage.model.dto;

public class TeampageDTO {

	private int teamId;
	private int id;

	public int getTeamId() {
		return teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	@Override
	public String toString() {
		return "TeampageDTO [teamId=" + teamId + ", id=" + id + "]";
	}

}
