package kr.co.sist.football.teampage.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.config.MybatisConnector;

@Repository
public class TeampageDAO {

	public MybatisConnector mybatisconnector;

	private final String namespace = "mybatis.mappers.TeamPageMapper";

	public TeampageDAO() {

	}

	@Autowired
	public TeampageDAO(MybatisConnector mybatisconnector) {
		this.mybatisconnector = mybatisconnector;
	}

	public int updateTeamId(Map<String, Integer> updateTeamIdMap) {
		SqlSession sqlSession = mybatisconnector.sqlSession();

		try {
			return sqlSession.update(namespace + ".updateTeamId", updateTeamIdMap);

		} finally {
			sqlSession.close();
		}
	}
	//팀 탈퇴 
	public int deleteTeamId(int teamId) {
		SqlSession sqlSession = mybatisconnector.sqlSession();
		
		try {
			return sqlSession.delete(namespace + ".deleteTeamId", teamId);
			
		}finally {
			sqlSession.close();
		}
	}
	
}
