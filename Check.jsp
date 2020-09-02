<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%

	int n=0;
	String rollno="";

	rollno = request.getParameter("t1");

	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = con.prepareStatement("select count(*) from students_details where rollno = ?");

	psmt.setString(1,rollno);

	ResultSet rs = psmt.executeQuery();

	rs.next();

	n = rs.getInt(1);

	if(n==1)
	{
		psmt = con.prepareStatement("select section,name,mobile_message,eamcet_hallticket,eamcet_rank from students_details where rollno = ?");
		psmt.setString(1,rollno);
		rs= psmt.executeQuery();
		rs.next();
		String branch=rs.getString(1);
		String sname=rs.getString(2);
		String mobile_message=rs.getString(3);
		String ehallticket=rs.getString(4);
		String erank=rs.getString(5);
		
		
		session.setAttribute("rollno",rollno);
		session.setAttribute("branch",branch);
		session.setAttribute("name",sname);
		session.setAttribute("ehall",ehallticket);
		session.setAttribute("rank",erank);
		session.setAttribute("message",mobile_message);
		
		response.sendRedirect("profile.jsp");
	}
	else
		response.sendRedirect("home.jsp");
%>