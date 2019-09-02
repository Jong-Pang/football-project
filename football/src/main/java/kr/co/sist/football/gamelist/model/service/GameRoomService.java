package kr.co.sist.football.gamelist.model.service;
//package kr.co.sist.football.test.model.service;
//
//import java.io.IOException;
//import java.io.InputStream;
//import java.util.HashMap;
//import java.util.List;
//import org.apache.ibatis.io.Resources;
//import org.apache.ibatis.session.SqlSession;
//import org.apache.ibatis.session.SqlSessionFactoryBuilder;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.stereotype.Service;
//
//import kr.co.sist.football.test.model.dao.GameListDao;
//import mybatis.config.MybatisConnector;
//
//
//@Service
//public class GameListService {
//
//	private final String namespace = "mybatis.board";
//	@Autowired
//	public MybatisConnector mybatisConnector;
//
//	public int getArticleCount(String boardid) throws Exception {
//		SqlSession sqlSession = mybatisConnector.sqlSession();
//		System.out.println("getArticleCount===old");
//		try {
//			return sqlSession.selectOne(namespace + ".getArticleCount", boardid);
//		} finally {
//			sqlSession.close();
//		}
//	}
//
//	
//	
//	public GameListDao getUpdate(int num, String boardid) throws Exception {
//		SqlSession sqlSession = mybatisConnector.sqlSession();
//		HashMap map = new HashMap();
//		map.put("num", num);
//		map.put("boardid", boardid);
//		GameListDao article = new GameListDao();
//		try {
//			article = (GameListDao) sqlSession.selectOne(namespace + ".getArticle", map);
//			System.out.println(":::" + article);
//		} finally {
//			sqlSession.close();
//			return article;
//		}
//	}
//
////	public int updateArticle(GameListDao article, String boardid) throws Exception {
////		SqlSession sqlSession = mybatisConnector.sqlSession();
////		HashMap map = new HashMap();
////		map.put("num", article.getNum());
////		int x = -1;
////		try {
////			String dbpasswd = (String) sqlSession.selectOne(namespace + ".update_passwd", map);
////			if (dbpasswd.equals(article.getPasswd())) {
////				x = sqlSession.update(namespace + ".update_update", article);
////			}
////		} finally {
////			sqlSession.commit();
////			sqlSession.close();
////		}
////		return x;
////	}
//	
//}
