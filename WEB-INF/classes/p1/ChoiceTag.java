package p1;
import java.sql.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class  ChoiceTag extends TagSupport
{
	String query,flag,cname;
	public void setQuery(String q)
	{
		query = q;
	}
	public void setFlag(String f)
	{
			flag = f;
	}
	public void setCname(String n)
	{
		cname = n;
	}
	public int doStartTag() throws JspException
	{
			JspWriter out=pageContext.getOut();
		try
		{
			//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			//Connection con = DriverManager.getConnection("jdbc:odbc:mca","scott","tiger");
			//Class.forName("oracle.jdbc.OracleDriver");
			//Connection con = DriverManager.getConnection("jdbc:oracle:thin:@samba:1521:samba","mids","mids");
			DB b = new DB();
			Connection con = b.connect();

			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next())
			{
				String code=rs.getString(1);
				String name=rs.getString(2);
				if(code.equals(cname))
				out.println("<option value='"+code+"' selected>"+name+"</option>");
				else
				out.println("<option value='"+code+"'>"+name+"</option>");
			}
		}
		catch(Exception e){System.out.println(e);}
		return SKIP_BODY;
	}

}
