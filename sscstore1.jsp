<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%
	String str=(String)session.getAttribute("rollno");
	String d1=request.getParameter("t10");
	
	String dd = d1.substring(8);
	String mm = d1.substring(5,7);
	String yy = d1.substring(0,4);
	
	d1=dd+"-"+mm+"-"+yy;
		
	int n=0;
	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = con.prepareStatement("insert into all_students(rollno,student_name,father_name,mother_name,ssc_rollno,ssc_school_name,month_ssc_passed,year_ssc_passed,ssc_cgpa,ssc_medium,date_of_birth,gender,identification_marks1,identification_marks2,ssc_cbse) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	
	psmt.setString(1,str);
	psmt.setString(2,request.getParameter("t1"));
	psmt.setString(3,request.getParameter("t2"));
	psmt.setString(4,request.getParameter("t3"));
	psmt.setString(5,request.getParameter("t4"));
	psmt.setString(6,request.getParameter("t5"));
	psmt.setString(7,request.getParameter("t6"));
	psmt.setString(8,request.getParameter("t7"));
	psmt.setString(9,request.getParameter("t8"));
	psmt.setString(10,request.getParameter("t9"));
	psmt.setString(11,d1);
	psmt.setString(12,request.getParameter("t11"));
	psmt.setString(13,request.getParameter("t12"));
	psmt.setString(14,request.getParameter("t13"));
	psmt.setString(15,request.getParameter("ssccbse"));
	psmt.executeUpdate();
	
	out.println("student_name="+request.getParameter("t1"));
	out.println("father_name="+request.getParameter("t2"));
	out.println("mother_name="+request.getParameter("t3"));
	out.println("ssc_rollno="+request.getParameter("t4"));
	out.println("ssc_school_name="+request.getParameter("t5"));
	out.println("month_ssc_passed="+request.getParameter("t6"));
	out.println("year_ssc_passed="+request.getParameter("t7"));
	out.println("ssc_cgpa="+request.getParameter("t8"));
	out.println("ssc_medium="+request.getParameter("t9"));
	out.println("date_of_birth="+d1);
	out.println("gender="+request.getParameter("t11"));
	out.println("identification_marks1="+request.getParameter("t12"));
	out.println("identification_marks2="+request.getParameter("t13"));
	out.println("SSC / CBSE ="+request.getParameter("ssccbse"));
	
%>
