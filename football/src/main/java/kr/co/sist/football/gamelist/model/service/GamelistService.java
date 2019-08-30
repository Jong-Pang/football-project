package kr.co.sist.football.gamelist.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.football.gamelist.model.dao.GamelistDao;
import kr.co.sist.football.gamelist.model.dto.GameInfoParam;
import kr.co.sist.football.gamelist.model.dto.Gamelist;

@Service
public class GamelistService {
	private GamelistDao gamelistDao;

	@Autowired
	private GamelistService(GamelistDao gamelistDao) {
		this.gamelistDao = gamelistDao;
	}

	public Gamelist getGamelist(int teamId, GameInfoParam gameInfoParam) {
		Gamelist gamelist = new Gamelist();

		gamelist.setGameInfos(gamelistDao.getGameInfoList(gameInfoParam));

		// teamId�� -1�� ��� �Էµ��� ���� ������ ���� ����Ʈ ���� �� ����
		if (teamId == -1) {
			return gamelist;
		} else {
			gamelist.setTeamInfo(gamelistDao.getTeamInfo(teamId));

			return gamelist;
		}
	}

}
