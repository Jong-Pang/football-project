package kr.co.sist.football.gameschedule.model.dto;

import java.util.List;

import kr.co.sist.football.common.model.dto.GameInfo;

public class GameInfoByMonth {
	private int gameCount;
	private List<GameInfo> gameInfo;

	public int getGameCount() {
		return gameCount;
	}

	public void setGameCount(int gameCount) {
		this.gameCount = gameCount;
	}

	public List<GameInfo> getGameInfo() {
		return gameInfo;
	}

	public void setGameInfo(List<GameInfo> gameInfo) {
		this.gameInfo = gameInfo;
	}

	@Override
	public String toString() {
		return "GameInfoByDate [gameCount=" + gameCount + ", gameInfo=" + gameInfo + "]";
	}

}
