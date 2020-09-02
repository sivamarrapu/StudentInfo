<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%
	String str=(String)session.getAttribute("rollno");
	
	String d1=request.getParameter("t9");
	
	String dd = d1.substring(8);
	String mm = d1.substring(5,7);
	String yy = d1.substring(0,4);
	
	d1=dd+"-"+mm+"-"+yy;
	
	int n=0;
	DB b = new DB();
	Connection con = b.connect();
	//PreparedStatement psmt = con.prepareStatement("insert into other_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	PreparedStatement psmt = con.prepareStatement("update all_students set student_mobileno=?,mother_mobileno=?,father_mobileno=?,mobileno_message=?,mother_occupation=?,father_occupation=?,annual_income=?,student_mother_tongue=?,student_actual_dateof_birth=?,guardian_name=?,guardian_mobileno=?,parent_emailid=?,student_emailid=?,student_bolldgroup=?,student_bank_accountno=?,student_bank_name=?,student_bank_IFSC=?,student_gothram=? where rollno=?");

	psmt.setString(1,request.getParameter("t1"));
	psmt.setString(2,request.getParameter("t2"));
	psmt.setString(3,request.getParameter("t3"));
	psmt.setString(4,request.getParameter("t4"));
	psmt.setString(5,request.getParameter("t5"));
	psmt.setString(6,request.getParameter("t6"));
	psmt.setString(7,request.getParameter("t7"));
	psmt.setString(8,request.getParameter("t8"));
	psmt.setString(9,d1);
	psmt.setString(10,request.getParameter("t10"));
	psmt.setString(11,request.getParameter("t11"));
	psmt.setString(12,request.getParameter("t12"));
	psmt.setString(13,request.getParameter("t13"));
	psmt.setString(14,request.getParameter("t14"));
	psmt.setString(15,request.getParameter("t15"));
	psmt.setString(16,request.getParameter("t16"));
	psmt.setString(17,request.getParameter("t17"));
	psmt.setString(18,request.getParameter("t18"));
	psmt.setString(19,str);
	n = psmt.executeUpdate();
	
	if(n>0)
	{
		out.println("student_mobileno="+request.getParameter("t1"));
		out.println("mother_mobileno="+request.getParameter("t2"));
		out.println("father_mobileno="+request.getParameter("t3"));
		out.println("mobileno_message="+request.getParameter("t4"));
		out.println("mother_occupation="+request.getParameter("t5"));
		out.println("father_occupation="+request.getParameter("t6"));
		out.println("annual_income="+request.getParameter("t7"));
		out.println("mother_tongue="+request.getParameter("t8"));
		out.println("student_actual_dateof_birth="+d1);
		out.println("guardian_name="+request.getParameter("t10"));
		out.println("guardian_mobileno="+request.getParameter("t11"));
		out.println("parent_emailid="+request.getParameter("t12"));
		out.println("student_emailid="+request.getParameter("t13"));
		out.println("student_bolldgroup="+request.getParameter("t14"));
		out.println("student_bank_accountno="+request.getParameter("t15"));
		out.println("student_bank_name="+request.getParameter("t16"));
		out.println("student_bank_IFSC="+request.getParameter("t17"));
		out.println("student_gothram="+request.getParameter("t18"));
	}
		

%>
