package kr.co.sist.football.common.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.sist.football.common.model.dto.TeamInfo;
import mybatis.config.MybatisConnector;

@Repository
public class CommonDao {
	public MybatisConnector mybatisconnector;

	@Autowired
	public CommonDao(MybatisConnector mybatisconnector) {
		this.mybatisconnector = mybatisconnector;
	}

	private final String common = "mybatis.mappers.CommonMapper";

	public TeamInfo getTeamInfo(int teamId) {
		SqlSession sqlSession = mybatisconnector.sqlSession();
		try {
			TeamInfo teamInfo = sqlSession.selectOne(common + ".selectTeamInfo", teamId);
			return teamInfo;
		} finally {
			sqlSession.close();
		}
	}
}
