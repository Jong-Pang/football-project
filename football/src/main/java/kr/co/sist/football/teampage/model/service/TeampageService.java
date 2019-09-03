package kr.co.sist.football.teampage.model.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.football.common.model.dao.CommonDao;
import kr.co.sist.football.teampage.model.dao.TeampageDAO;
import kr.co.sist.football.teampage.model.dto.Teampage;

@Service
public class TeampageService {

	TeampageDAO teampageDAO;

	CommonDao commonDao;

	@Autowired
	public TeampageService(TeampageDAO teampageDAO, CommonDao commonDao) {
		this.teampageDAO = teampageDAO;
		this.commonDao = commonDao;
	}

	public Teampage getTeampage(int teamId) {
		Teampage teampage = new Teampage();

		teampage.setTeamInfo(commonDao.getTeamInfo(teamId));

		return teampage;
	}

	public int setTeamId(int memberId, int teamId) {

		int statusCode = -1;

		Map<String, Integer> updateTeamIdMap = new HashMap<String, Integer>();
		updateTeamIdMap.put("teamId", teamId);
		updateTeamIdMap.put("memberId", memberId);

		statusCode = teampageDAO.updateTeamId(updateTeamIdMap);

		return statusCode;
	}

	public int quitTeam(int id, String password) {

		int statusCode = -1;

		statusCode = teampageDAO.deleteTeamId(0);

		return statusCode;
	}
}
