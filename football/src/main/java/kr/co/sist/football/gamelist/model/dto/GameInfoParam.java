package kr.co.sist.football.gamelist.model.dto;

public class GameInfoParam {
	private int startNum;
	private int endNum;

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	@Override
	public String toString() {
		return "GameInfoParam [startNum=" + startNum + ", endNum=" + endNum + "]";
	}

}
