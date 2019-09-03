package test.teampage;

import org.junit.Test;
import org.springframework.context.support.GenericXmlApplicationContext;

import kr.co.sist.football.teampage.model.dao.TeampageDAO;
import kr.co.sist.football.teampage.model.service.TeampageService;

public class TeampageTest {
	GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("root-context.xml");

	TeampageDAO teampageDAO = ctx.getBean(TeampageDAO.class);
	TeampageService teampageService = ctx.getBean(TeampageService.class);

//	@Test
	public void deleteTeamIdTest() {
		int memberId = 0;
		teampageDAO.deleteTeamId(memberId);
	}

	@Test
	public void quitTeamTest() {
		int memberId =0;
		String password = "0";
		teampageService.quitTeam(memberId, password);
	}
}
