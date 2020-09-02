<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%

	int n=0;
	String rollno="";

	rollno = request.getParameter("t1");

	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	psmt=con.prepareStatement("select count(*) from all_students where rollno=?");
	psmt.setString(1,rollno);
	rs=psmt.executeQuery();
	if(rs.next())
	{
		n = rs.getInt(1);
	}
	if(n==1)
	{
		session.setAttribute("rollno",rollno);
		response.sendRedirect("IndPDFGen2.jsp");
	}
	else
		response.sendRedirect("IndPdfGenHome.jsp");
%>