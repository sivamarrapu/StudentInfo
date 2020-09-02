
package p1;
import java.sql.*;

public class DB 
{
	public Connection connect()throws Exception
	{
		//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		//Connection con = DriverManager.getConnection("jdbc:odbc:feedback","feedback","feedback");
		//Class.forName("oracle.jdbc.OracleDriver");
		//Connection con = DriverManager.getConnection("jdbc:oracle:thin:@cplab-PC:1521:XE","feedback","feedback");
		//return con;
		String url = "jdbc:mysql://localhost:3306/"; 
		String dbName = "data";
		String driver = "com.mysql.jdbc.Driver"; 
		String userName = "root"; 
		String password = "root"; 
		Class.forName(driver).newInstance(); 
		Connection con = DriverManager.getConnection(url+dbName,userName,password);
		return con;
	}
}
