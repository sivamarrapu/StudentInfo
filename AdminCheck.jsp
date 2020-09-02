<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%

	
	DB b = new DB();
	
	Connection con = b.connect();
	
	PreparedStatement psmt = con.prepareStatement("select count(*) from users where username=? and password=?");

	psmt.setString(1,request.getParameter("uname"));
	psmt.setString(2,request.getParameter("psw"));

	ResultSet rs = psmt.executeQuery();

	rs.next();

	int n = rs.getInt(1);

	if(n==1)
	{
		session.setAttribute("admin",request.getParameter("uname"));
		response.sendRedirect("ReportPanel.jsp");
	}
	else
		response.sendRedirect("Login.html");
%>