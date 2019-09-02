package kr.co.sist.football.gamelist.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.config.MybatisConnector;

@Repository
public class GameRoomDao {
	public MybatisConnector mybatisconnector;
	
	private final String namespace = "mybatis.mappers.GameRoomMapper";

	public GameRoomDao() {
	}

	@Autowired
	public GameRoomDao(MybatisConnector mybatisconnector) {
		this.mybatisconnector = mybatisconnector;
	}
	
	public void game() throws Exception {
		SqlSession sqlSession = mybatisconnector.sqlSession();

		try {
			System.out.println(sqlSession.selectList(namespace + ".gameroomteaminfo"));
		} finally {
			sqlSession.close();
		}
	}
}