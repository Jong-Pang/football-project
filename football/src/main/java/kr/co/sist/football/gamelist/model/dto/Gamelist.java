package kr.co.sist.football.gamelist.model.dto;

import java.util.List;

import kr.co.sist.football.common.model.dto.GameInfo;
import kr.co.sist.football.common.model.dto.TeamInfo;

public class Gamelist {
	private TeamInfo teamInfo;
	private List<GameInfo> gameInfos;

	public TeamInfo getTeamInfo() {
		return teamInfo;
	}

	public void setTeamInfo(TeamInfo teamInfo) {
		this.teamInfo = teamInfo;
	}

	public List<GameInfo> getGameInfos() {
		return gameInfos;
	}

	public void setGameInfos(List<GameInfo> gameInfos) {
		this.gameInfos = gameInfos;
	}

	@Override
	public String toString() {
		return "Gamelist [teamInfo=" + teamInfo + ", gameInfos=" + gameInfos + "]";
	}

}
