package test.amigo.oracle;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class OracleTest {
	private static final Logger logger = LoggerFactory.getLogger(OracleTest.class);
	
	@Inject
	private SqlSession session;
	
	@Test
	public void sessionTest() {
		logger.info("session°ª È®ÀÎ : "+session.getConnection());
	}

}
