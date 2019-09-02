package kr.co.sist.football.gamelist.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.football.common.model.dao.CommonDao;
import kr.co.sist.football.gamelist.model.dao.GamelistDao;
import kr.co.sist.football.gamelist.model.dto.GameInfoParam;
import kr.co.sist.football.gamelist.model.dto.Gamelist;

@Service
public class GamelistService {
	private GamelistDao gamelistDao;
	CommonDao commonDao;

	@Autowired
	private GamelistService(GamelistDao gamelistDao, CommonDao commonDao) {
		this.gamelistDao = gamelistDao;
		this.commonDao = commonDao;
	}

	public Gamelist getGamelist(int teamId, GameInfoParam gameInfoParam) {
		Gamelist gamelist = new Gamelist();

		gamelist.setGameInfos(gamelistDao.getGameInfoList(gameInfoParam));

		if (teamId == -1) {
			return gamelist;
		} else {
			gamelist.setTeamInfo(commonDao.getTeamInfo(teamId));

			return gamelist;
		}
	}

}
