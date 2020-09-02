<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="application/vnd.ms-excel" %> 

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
  height : 5px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
.c1
{
	background-color : blue;
	color : white;
	font-weight : bold;
}
</style>
</head>
<body>
<table>
<caption class="c1">Un Registered Students Report</caption>
<tr>
<%
	response.setHeader("Content-Disposition", "attachment; filename=report.xls"); 
	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	psmt=con.prepareStatement("select rollno,name,branch from students_details where rollno not in(select rollno from all_students where inter_regd_num <> '' and eamcet_hallticket<> '' and adharno <> '' and student_mobileno <> '')");
	
	rs = psmt.executeQuery();
	
	ResultSetMetaData rsmd = rs.getMetaData();
	int cols = rsmd.getColumnCount();
	
	for(int j=1;j<=cols;j++)
		out.println("<th>"+rsmd.getColumnLabel(j));
	out.println("</tr>");
	
	while(rs.next())
	{
			out.println("<tr>");
				for(int i=1;i<=cols;i++)
					out.println("<td nowrap>"+rs.getString(i));
			out.println("</tr>");
	
	}
	
%>