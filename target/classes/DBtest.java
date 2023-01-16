import static org.junit.Assert.*;

import java.sql.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class DBtest {	
	Connection connection;

	@Before
	public void before() throws SQLException {
		connection = DriverManager.getConnection("jdbc:mysql:///petsmile","root","root");
	}
	
	@After
	public void after() throws SQLException {
		connection.close();
	}
	
	@Test
	public void closeStatementShouldCloseStatement() throws SQLException {
        Statement statement = connection.createStatement();
        statement.close();
        assertTrue(statement.isClosed());
    }

	@Test
    public void closeStatementWithNullShouldNotThrow() throws SQLException {
        connection.close();
    }
}
