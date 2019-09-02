package mybatis.config;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisConnector {

	private SqlSessionFactory sqlFactory;

	public MybatisConnector(SqlSessionFactory sqlFactory) {
		this.sqlFactory = sqlFactory;
	}

	public SqlSession sqlSession() {
		return sqlFactory.openSession();
	}
}
