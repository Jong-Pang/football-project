package kr.co.sist.football.teampage.model.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.football.teampage.model.dao.TeampageDAO;
import kr.co.sist.football.teampage.model.dto.Teampage;

@Service
public class TeampageService {

	TeampageDAO teampageDAO;

	@Autowired
	public TeampageService(TeampageDAO teampageDAO) {
		this.teampageDAO = teampageDAO;
	}

	public Teampage getTeampage(int teamId) {
		Teampage teampage = new Teampage();
		
		teampage.setTeamInfo(teampageDAO.getTeamInfo(teamId));
		
		

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
	
	
}
