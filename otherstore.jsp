<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%
	String str=(String)session.getAttribute("rollno");
%>
<%

	int n=0;
	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = con.prepareStatement("insert into other_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
	psmt.setString(11,request.getParameter("t10"));
	psmt.setString(12,request.getParameter("t11"));
	psmt.setString(13,request.getParameter("t12"));
	psmt.setString(14,request.getParameter("t13"));
	psmt.setString(15,request.getParameter("t14"));
	psmt.setString(16,request.getParameter("t15"));
	psmt.setString(17,request.getParameter("t16"));
	psmt.setString(18,request.getParameter("t17"));
	psmt.setString(19,request.getParameter("t18"));
	n = psmt.executeUpdate();
%>
<!doctype html>
<html>
<head>
<script>
	function preback()
	{
		window.history.forward(1);
	}
	setTimeout("preback()",0);
	window.onunload=function(){null};
</script>
<style>
::placeholder { /* Firefox, Chrome, Opera */ 
    color: silver; 
} 
  
:-ms-input-placeholder { /* Internet Explorer 10-11 */ 
    color: red; 
} 
  
::-ms-input-placeholder { /* Microsoft Edge */ 
    color: orange; 
}
</style>
<meta charset="utf-8">
<title>title</title>
<link href="style.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
</head>

<body>
	<div id="topgrid">
		<div>
			<img alt="" id="clglogo" src="urce.jpg">
		</div>
		<div>
			<img  alt="" id="profile_img" src="./photos/<%=str%>.JPG"></img>
		</div>
	</div>
 <div class="wrapper">
  <ul class="tabs clearfix" data-tabgroup="first-tab-group">
    <li><a href="#tab1" class="active">SSC / CBSE</a></li>
    <li><a href="#tab2">Intermediate</a></li>
    <li><a href="#tab3">EAMCET</a></li>
    <li><a href="#tab4">Adhar</a></li>
    <li><a href="#tab5">Others</a></li>
  </ul>
  <section id="first-tab-group" class="tabgroup">
    <div id="tab1">
	</div>
    <div id="tab2">
    </div>
    <div id="tab3">
    </div>
    <div id="tab4">
    </div>
    <div id="tab5">
     <%
		if(n>0)
			out.println("<center><h1>Record Inserted</h1></center>");
	%>
    </div>
  </section>
</div>
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
 <script src="js/index.js"></script>
</body>
</html>

