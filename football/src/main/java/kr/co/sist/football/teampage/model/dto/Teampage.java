package kr.co.sist.football.teampage.model.dto;

public class Teampage {
	private TeamInfo teamInfo;
	

	public TeamInfo getTeamInfo() {
		return teamInfo;
	}

	
	
	public void setTeamInfo(TeamInfo teamInfo) {
		this.teamInfo = teamInfo;
	}



	@Override
	public String toString() {
		return "Teampage [teamInfo=" + teamInfo + "]";
	}

}
