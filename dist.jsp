<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%
	String str=request.getParameter("state");;
	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = con.prepareStatement("select distid,distname from dist where stateid=?");
	psmt.setString(1,str);
	ResultSet rs = psmt.executeQuery();
	String buffer="District: <select name='dist' id='dist'><option value='-1'>Select</option>"; 
            while(rs.next()){
            buffer=buffer+"<option value='"+rs.getString(2)+"'>"+rs.getString(2)+"</option>"; 
            } 
            buffer=buffer+"</select>"; 
            response.getWriter().println(buffer);
      %>
