<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%
	String str=(String)session.getAttribute("rollno");
	int n=0;
	DB b = new DB();
	Connection con = b.connect();
	//PreparedStatement psmt = con.prepareStatement("insert into eamcet_details values(?,?,?,?,?,?,?,?)");
	PreparedStatement psmt = con.prepareStatement("update all_students set admin_type=?,eamcet_hallticket=?,eamcet_rank=?,local_area=?,religion=?,caste=?,subcaste=?,fee_reembursement=?,nationality=? where rollno=?");	
	psmt.setString(1,request.getParameter("t1"));
	psmt.setString(2,request.getParameter("t2"));
	psmt.setString(3,request.getParameter("t3"));
	psmt.setString(4,request.getParameter("t4"));
	psmt.setString(5,request.getParameter("t5"));
	psmt.setString(6,request.getParameter("t6"));
	psmt.setString(7,request.getParameter("t7"));
	psmt.setString(8,request.getParameter("t8"));
	psmt.setString(9,request.getParameter("t9"));
	psmt.setString(10,str);
		
	n = psmt.executeUpdate();

	if(n>0)
	{
		out.println("admin_type="+request.getParameter("t1"));
		out.println("eamcet_hallticket="+request.getParameter("t2"));
		out.println("eamcet_rank="+request.getParameter("t3"));
		out.println("local_area="+request.getParameter("t4"));
		out.println("religion="+request.getParameter("t5"));
		out.println("caste="+request.getParameter("t6"));
		out.println("subcaste="+request.getParameter("t7"));
		out.println("fee reembursement="+request.getParameter("t8"));
		out.println("nationality="+request.getParameter("t9"));
	}
		
	
%>
