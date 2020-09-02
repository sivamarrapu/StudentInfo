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
<caption class="c1">Student Report</caption>
<tr>
<%
	response.setHeader("Content-Disposition", "attachment; filename=report.xls"); 
	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = null;
	ResultSet rs = null;
	String query=""; 
	String[] paramNames = request.getParameterValues("cb");
               for(int i=0;i<paramNames.length;i++) {
                  String paramName =paramNames[i];
				  query=query.concat(paramName+",");	
				  //out.println(paramName+"<br>");
			   }
			   query=query.substring(0,query.lastIndexOf(','));
	psmt=con.prepareStatement("SELECT rollno,"+query+" from all_students");
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