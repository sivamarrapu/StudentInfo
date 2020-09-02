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
	PreparedStatement psmt = con.prepareStatement("insert into inter_details values(?,?,?,?,?,?,?,?,?,?)");
	
	
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
	
	n = psmt.executeUpdate();
%>
<!doctype html>
<html>
<head>
<script type="text/javascript">

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
    <li><a href="#tab1">SSC / CBSE</a></li>
    <li><a href="#tab2" class="active">Intermediate</a></li>
    <li><a href="#tab3">EAMCET</a></li>
    <li><a href="#tab4">Adhar</a></li>
    <li><a href="#tab5">Others</a></li>
  </ul>
  <section id="first-tab-group" class="tabgroup">
    <div id="tab2">
   <%
		if(n>0)
			out.println("<center><h1>Intermediate Details Inserted</h1></center>");
	%>
	</div>
    <div id="tab1">
	<!--<form action="sscstore.jsp" method="POST">
	<table align=center width="100%" height="230px">
		<caption class="c1">SSC / CBSE DETAILS</caption>
	   	<tr><td>Student Name(as per SSC)<td><input type="text" required placeholder="Enter Name" id="t1" name="t1"><td>Father Name(as per SSC)<td><input type="text" id="t2" name="t2"></tr>
		<tr><td>Mother Name(as per SSC)<td><input type="text" id="t3" name="t3"><td>SSC Rollno<td><input type="text" id="t4" name="t4"></tr>
		<tr><td>SSC School Name(as per SSC)<td><input type="text" id="t5" name="t5"><td>Month of SSC Passed<td><input type="text" id="t6" name="t6"></tr>
		<tr><td>Year of SSC Passed<td><input type="text" id="t7" name="t7"><td>SSC CGPA<td><input type="text" id="t8" name="t8"></tr>
		<tr><td>SSC Medium<td><input type="text" id="t9" name="t9"><td>Date of Birth<td><input type="date" id="t10" name="t10"></tr>
		<tr><td>Identification Marks 1 (as per SSC)<td><input type="text" id="t11" name="t11"><td>Identification Marks 2 (as per SSC)<td><input type="text" id="t12" name="t12"></tr>
	</table><br>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>-->
		<center><h1>SSC Details Inserted</h1></center>
    </div>
    <div id="tab3">
      <form>
	<table align=center width="100%" height="230px">
		<caption class="c1">EAMCET DETAILS</caption>
	   	<tr><td>Student Name(as per SSC)<td><input type="email"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
	</table><br><br>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>
    </div>
    <div id="tab4">
      <form>
	<table align=center width="100%" height="230px">
		<caption class="c1">ADHAR DETAILS</caption>
	   	<tr><td>Student Name(as per SSC)<td><input type="email"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
	</table><br><br>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>
    </div>
    <div id="tab5">
      <form>
	<table align=center width="100%" height="230px">
		<caption class="c1">OTHER DETAILS</caption>
	   	<tr><td>Student Name(as per SSC)<td><input type="email"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
		<tr><td>Student Name(as per SSC)<td><input type="text"><td>Student Name(as per SSC)<td><input type="text"></tr>
	</table>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>
    </div>
  </section>
</div>
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>

