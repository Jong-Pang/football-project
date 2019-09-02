package kr.co.sist.football.teamlist.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.football.teamlist.model.dao.TeamListDAO;
import kr.co.sist.football.teamlist.model.dto.Teamlist;

@Service
public class TeamlistService {

	private TeamListDAO teamListDAO;

	@Autowired
	private TeamlistService(TeamListDAO teamListDAO) {
		this.teamListDAO = teamListDAO;
	}

	public Teamlist getTeamlist() {
		Teamlist teamlist = new Teamlist();
		teamlist.setTeamCount(teamListDAO.getTeamCount());
		teamlist.setTeamInfos(teamListDAO.getTeamList());

		return teamlist;
	}

}
