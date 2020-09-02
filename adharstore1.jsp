<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%
	String str=(String)session.getAttribute("rollno");
	int n=0;
	DB b = new DB();
	Connection con = b.connect();
	//PreparedStatement psmt = con.prepareStatement("insert into adhar_permanent_address values(?,?,?,?,?,?,?,?)");
	PreparedStatement psmt = con.prepareStatement("update all_students set adharno=?,state=?,district=?,mandal=?,village_street_area=?,house_no=?,pincode=?,residence_type=?,mode_of_travel=?,pstate=?,pdistrict=?,pmandal=?,pvillage_street_area=?,phouse_no=?,ppincode=? where rollno=?");
	psmt.setString(1,request.getParameter("t2"));
	psmt.setString(2,request.getParameter("state"));
	psmt.setString(3,request.getParameter("dist"));
	psmt.setString(4,request.getParameter("t3"));
	psmt.setString(5,request.getParameter("t4"));
	psmt.setString(6,request.getParameter("t5"));
	psmt.setString(7,request.getParameter("t6"));
	psmt.setString(8,request.getParameter("t8"));
	psmt.setString(9,request.getParameter("t9"));
	psmt.setString(10,request.getParameter("state1"));
	psmt.setString(11,request.getParameter("dist1"));
	psmt.setString(12,request.getParameter("t10"));
	psmt.setString(13,request.getParameter("t11"));
	psmt.setString(14,request.getParameter("t12"));
	psmt.setString(15,request.getParameter("t13"));
	psmt.setString(16,str);	
	n = psmt.executeUpdate();
	if(n>=0)
	{
	out.println("adharno="+request.getParameter("t2"));
	out.println("Permanent Address");
	out.println("---------------");
	out.println("state="+request.getParameter("state"));
	out.println("district="+request.getParameter("dist"));
	out.println("mandal="+request.getParameter("t3"));
	out.println("village_street_area="+request.getParameter("t4"));
	out.println("house_no="+request.getParameter("t5"));
	out.println("pincode="+request.getParameter("t6"));
	out.println("residence_type="+request.getParameter("t8"));
	out.println("mode_of_travel="+request.getParameter("t9"));
	out.println("Present Address");
	out.println("---------------");
	out.println("state="+request.getParameter("state1"));
	out.println("district="+request.getParameter("dist1"));
	out.println("mandal="+request.getParameter("t10"));
	out.println("village_street_area="+request.getParameter("t11"));
	out.println("house_no="+request.getParameter("t12"));
	out.println("pincode="+request.getParameter("t13"));
	}
	
%>
