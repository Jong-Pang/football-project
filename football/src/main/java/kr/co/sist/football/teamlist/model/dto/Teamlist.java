package kr.co.sist.football.teamlist.model.dto;

import java.util.List;

import kr.co.sist.football.common.model.dto.TeamInfo;

public class Teamlist {
	private int teamCount;
	private List<TeamInfo> teamInfos;

	public int getTeamCount() {
		return teamCount;
	}

	public void setTeamCount(int teamCount) {
		this.teamCount = teamCount;
	}

	public List<TeamInfo> getTeamInfos() {
		return teamInfos;
	}

	public void setTeamInfos(List<TeamInfo> teamInfos) {
		this.teamInfos = teamInfos;
	}

	@Override
	public String toString() {
		return "Teamlist [teamCount=" + teamCount + ", teamInfos=" + teamInfos + "]";
	}
}
