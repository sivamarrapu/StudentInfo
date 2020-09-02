<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%
	String str=(String)session.getAttribute("rollno");

	int n=0;
	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = con.prepareStatement("update all_students set inter_collge_name=?,inter_college_place=?,inter_regd_num=?,month_inter_passed=?,year_inter_passed=?,inter_medium=?,inter_first_cgpa=?,inter_second_cgpa=?,inter_final_cgpa=?,inter_plustotype=?,inter_tcno=? where rollno=?");
	psmt.setString(1,request.getParameter("t1"));
	psmt.setString(2,request.getParameter("t2"));
	psmt.setString(3,request.getParameter("t3"));
	psmt.setString(4,request.getParameter("t4"));
	psmt.setString(5,request.getParameter("t5"));
	psmt.setString(6,request.getParameter("t6"));
	psmt.setString(7,request.getParameter("t7"));
	psmt.setString(8,request.getParameter("t8"));
	psmt.setString(9,request.getParameter("t9"));
	psmt.setString(10,request.getParameter("incbse"));
	psmt.setString(11,request.getParameter("t10"));
	psmt.setString(12,str);
	n = psmt.executeUpdate();
	if(n>0)
	{
		out.println("inter_collge_name="+request.getParameter("t1"));
		out.println("inter_college_place="+request.getParameter("t2"));
		out.println("inter_regd_num="+request.getParameter("t3"));
		out.println("month_inter_passed="+request.getParameter("t4"));
		out.println("year_inter_passed="+request.getParameter("t5"));
		out.println("inter_medium="+request.getParameter("t6"));
		out.println("inter_first_cgpa="+request.getParameter("t7"));
		out.println("inter_second_cgpa="+request.getParameter("t8"));
		out.println("inter_final_cgpa="+request.getParameter("t9"));
		out.println("inter_plustotype="+request.getParameter("incbse"));
		out.println("inter_tcno"+request.getParameter("t10"));
	}
		
%>