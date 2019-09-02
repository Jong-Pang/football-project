package kr.co.sist.football.gameschedule.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.sist.football.common.model.dto.GameInfo;
import mybatis.config.MybatisConnector;

@Repository
public class GameDao {

	private final String namespace = "mybatis.mappers.GameMapper";

	public MybatisConnector mybatisConnector;

	public GameDao() {
	}

	@Autowired
	public GameDao(MybatisConnector mybatisConnector) {
		System.out.println(mybatisConnector.toString());
		this.mybatisConnector = mybatisConnector;
	}
	// AutoWired를 생성자 형식으로 해 놓으면 더 괜찮다고 해놔서 이렇게 해놓은거임

	public int getGameCount(int kind) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			return sqlSession.selectOne(namespace + ".selectGameCount", kind);
		} finally {
			sqlSession.close();
		}
	}

	public List<GameInfo> getGamesByDate(int month, int kind) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		Map<String, Integer> map = new HashMap<String, Integer>();

		map.put("kind", kind);
		map.put("month", month);

		try {
			return sqlSession.selectList("mybatis.mappers.GameMapper.selectGamesByDate", map);
		} catch (RuntimeException e) {
			System.err.println("========================");
			System.err.println("=====날짜를 입력해주세요=====");
			System.err.println("========================");
			return null;
		} finally {

			sqlSession.close();
		}

	}

}
