package kr.co.sist.football.teampage;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import org.springframework.context.support.GenericXmlApplicationContext;

import kr.co.sist.football.teampage.model.dto.TeampageDTO;
import mybatis.config.MybatisConnector;


public class MybatisTest {

	GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("root-context.xml");
	private final String namespace = "mybatis.mappers.TestMapper";
	MybatisConnector mybatisconnector = ctx.getBean(MybatisConnector.class);

	public MybatisTest() {
	}

	public MybatisTest(MybatisConnector mybatisconnector) {
		this.mybatisconnector = mybatisconnector;
	}


	public void updateTeamId(int memberId, int teamId) {
		SqlSession sqlSession = mybatisconnector.sqlSession();

		TeampageDTO teampageDTO = new TeampageDTO();


		Map<String, Integer> updateTeamIdMap = new HashMap<String, Integer>();
		updateTeamIdMap.put("teamId", teamId);
		updateTeamIdMap.put("memberId", memberId);

		try {
			int result = sqlSession.update(namespace + ".updateTeamId", updateTeamIdMap);
			System.out.println(result);
		} finally {
			sqlSession.close();
		}
	}
	
	

	public static void main(String[] args) throws Exception {
		MybatisTest test = new MybatisTest();


			test.updateTeamId(0, 1);
	}
}
