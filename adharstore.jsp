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
	PreparedStatement psmt = con.prepareStatement("insert into adhar_permanent_address values(?,?,?,?,?,?,?,?)");
	
	psmt.setString(1,str);
	psmt.setString(2,request.getParameter("t2"));
	psmt.setString(3,request.getParameter("state"));
	psmt.setString(4,request.getParameter("dist"));
	psmt.setString(5,request.getParameter("t3"));
	psmt.setString(6,request.getParameter("t4"));
	psmt.setString(7,request.getParameter("t5"));
	psmt.setString(8,request.getParameter("t6"));
	
	//psmt.executeUpdate();
	
	psmt = con.prepareStatement("insert into residence_details values(?,?,?,?,?,?,?,?,?)");
	
	psmt.setString(1,str);
	psmt.setString(2,request.getParameter("t8"));
	psmt.setString(3,request.getParameter("t9"));
	psmt.setString(4,request.getParameter("state1"));
	psmt.setString(5,request.getParameter("dist1"));
	psmt.setString(6,request.getParameter("t10"));
	psmt.setString(7,request.getParameter("t11"));
	psmt.setString(8,request.getParameter("t12"));
	psmt.setString(9,request.getParameter("t13"));
		
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
	<%
		if(n>0)
			out.println("<center><h1>Record Inserted</h1></center>");
	%>
    </div>
    <div id="tab2">
      <form action="interstore.jsp" method="POST">
	<table align=center width="100%" height="230px">
		<caption class="c1">INTERMEDIATE DETAILS</caption>
	   	<tr><td>Intermediate College Name<td><input type="text" required placeholder="Enter " id="t1" name="t1"><td>Intermediate College Place<td><input type="text" id="t2" name="t2"></tr>
		<tr><td>Intermediate Regd No<td><input type="text" id="t3" name="t3"><td>Month of Inter Passed<td><input type="text" id="t4" name="t4"></tr>
		<tr><td>Year of Inter Passed<td><input type="text" id="t5" name="t5"><td>Intermediate Medium<td><input type="text" id="t6" name="t6"></tr>
		<tr><td>Inter Ist Year CGPA<td><input type="text" id="t7" name="t7"><td>Inter 2nd Year CGPA<td><input type="text" id="t8" name="t8"></tr>
		<tr><td>Inter Final CGPA<td><input type="text" id="t9" name="t9"></tr>
	</table><br><br>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>
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
      <%
		if(n>0)
			out.println("<center><h1>Record Inserted</h1></center>");
	%>
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

