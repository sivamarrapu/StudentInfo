<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%
	String str=(String)session.getAttribute("rollno");
	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = con.prepareStatement("select stateid,statename from state");
	ResultSet rs = psmt.executeQuery();

	//String sss=request.getParameter("t2");
	//out.println(sss);

%>

<!DOCTYPE html>
<html>
<head>
<style>
sup
{
	color:red;
	font-weight : bold;
}
.hh
{
	color:white;
	background-color:DodgerBlue;
}

* {
  margin: 0;
  padding: 0;
}
body {
  /*background: url('bg1.jpg') no-repeat center center fixed;*/
  background-color: gold;
 }
.wrapper {
  margin: 10px auto;
  width: 100%;
  font-family: sans-serif;
  color: black;
  font-size: 13px;
  line-height: 24px;
  max-width: 1000px;
  min-width: 340px;
  overflow: hidden;
  font-weight:bold;
}
.tabs li {
  list-style: none;
  float: left;
  width: 16%;
}
.tabs a {
  display: block;
  text-align: center;
  text-decoration: none;
  position: relative;
  text-transform: uppercase;
  color:white;
  font-weight : bold;
  height: 70px;
  line-height: 90px;
  background: linear-gradient(165deg, transparent 29%, steelblue 30%);
  }
.tabs a:hover,
.tabs a.active {
  background: linear-gradient(165deg, transparent 29%, #F2EEE2 30%);
  color: blue;
}
.tabs a:before {
  content: '';
  position: absolute;
  z-index: 11;
  left: 100%;
  top: -100%;
  height: 70px;
  line-height: 90px;
  width: 0;
  border-bottom: 70px solid rgba(0, 0, 0, 0.1);
  border-right: 7px solid transparent;
}
.tabs a.active:before {
  content: '';
  position: absolute;
  z-index: 11;
  left: 100%;
  top: -100%;
  height: 70px;
  line-height: 90px;
  width: 0;
  border-bottom: 70px solid rgba(0, 0, 0, 0.2);
  border-right: 20px solid transparent;
}
.tabgroup {
  box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, 0.1);
  
}
.tabgroup div {
  padding: 30px;
  background: snow;
  box-shadow: 0 3px 10px rgba(0, 0, 0, 0.3);
  height : 300px;
  border : 2px solid red;
  
}
.clearfix:after {
  content: "";
  display: table;
  clear: both;
}

#topgrid{
	display: grid;
	grid-template-columns: 85% 15%;
	background-color: #3f3a37;
}

#clglogo{
	height: 20vh;
	width: 100%;
	margin-left: auto;
	margin-right: auto;
}

#profile_img{
    width: 18vh;
    height: 18vh;
	border-width: 12px;
	border-color:yellow;
    margin-left: 20px;
    border-radius: 5px;
    margin-top: 5px;
}
.c1
{
	color:orangered;font-weight:bold;font-size:20px;
}

#idcardmain
{
	display: grid;
	grid-template-columns: 50% 50%;
	background-color: #3f3a37;
}

</style>
<meta charset="utf-8">
<title>First Year Student Information</title>
<!--<link href="style.css" rel="stylesheet" type="text/css"/>-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
<script>
			function f1()
			{
					
				var ele = document.getElementById('pa');
				var frm=document.getElementById('aadharForm');
				var index=frm.state.selectedIndex;
				if(ele.checked==true)
				{	
				//(frm.state.selectedIndex);
				var t3 = frm.t3.value;
				var t4 = frm.t4.value;
				var t5 = frm.t5.value;
				var t6 = frm.t6.value;
				frm.state1.selectedIndex=frm.state.selectedIndex;
				var vv =frm.dist.options[frm.dist.selectedIndex].value;
				//alert(vv);
				//alert(frm.dist.options[frm.dist.selectedIndex].value);
				//frm.dist1.options[0].setAttribute("selected");
				frm.dist1.options[frm.dist1.options.length] = new Option(vv,vv);
				frm.dist1.options.selectedIndex=1;
				frm.t10.value=t3;
				frm.t11.value=t4;
				frm.t12.value=t5;
				frm.t13.value=t6;
				}
				else
				{
					frm.state1.selectedIndex=0;
					frm.dist1.selectedIndex=0;
					frm.t10.value="";
					frm.t11.value="";
					frm.t12.value="";
					frm.t13.value="";
				}					
			}
			function f2() //management
			{
				var frm=document.getElementById('eamcetForm');
				frm.t2.required=false;
				frm.t3.required=false;
				frm.t2.pattern=false;
				frm.t3.pattern=false;
			}
			function f3() // convenor
			{
				var frm=document.getElementById('eamcetForm');
				frm.t2.required=true;
				frm.t3.required=true;
				
			}
			function showDist(str)
			{
				var xmlhttp; 
				if (window.XMLHttpRequest) 
				{// code for IE7+, Firefox, Chrome, Opera, Safari 
					xmlhttp=new XMLHttpRequest(); 
				} 
				else 
				{// code for IE6, IE5 
					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); 
				} 
				xmlhttp.onreadystatechange=function() 
				{ 
					
					if (xmlhttp.readyState==4 && xmlhttp.status==200) 
					{ 
						document.getElementById("dist").innerHTML=xmlhttp.responseText; 
					} 
				} 
				xmlhttp.open("GET","dist.jsp?state="+str,true); 
				xmlhttp.send(); 
			} 
			function showDist1(str)
			{
				var xmlhttp; 
				if (window.XMLHttpRequest) 
				{// code for IE7+, Firefox, Chrome, Opera, Safari 
					xmlhttp=new XMLHttpRequest(); 
				} 
				else 
				{// code for IE6, IE5 
					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); 
				} 
				xmlhttp.onreadystatechange=function() 
				{ 
					
					if (xmlhttp.readyState==4 && xmlhttp.status==200) 
					{ 
						document.getElementById("dist1").innerHTML=xmlhttp.responseText; 
					} 
				} 
				xmlhttp.open("GET","dist.jsp?state="+str,true); 
				xmlhttp.send(); 
			}                     	
</script>
</head>
<body>
	<div id="topgrid">
		<div>
			<img alt="" id="clglogo" src="urce.jpg"></img>
		</div>
		<div>
			<img alt="" id="profile_img" src="./photos/<%=str%>.JPG"></img>
		</div>
	</div>
 <div class="wrapper">
  <ul class="tabs clearfix" data-tabgroup="first-tab-group">
    <li><a href="#tab1" class="active">SSC / CBSE</a></li>
    <li><a href="#tab2">Inter / CBSE</a></li>
    <li><a href="#tab3">EAMCET</a></li>
    <li><a href="#tab4">Aadhar</a></li>
    <li><a href="#tab5">Others</a></li>
	<li><a href="#tab6">View ID Card</a></li>
	</ul>
  <section id="first-tab-group" class="tabgroup">
    <div id="tab1">
	 <form id="sscForm">
	<table align=center width="100%" height="230px">
		<caption class="c1">SSC / CBSE DETAILS<br><h6><font color='blue'>(*)</font>&nbsp;&nbsp;All fields are mandatory</h6></caption>
		<tr><td>SSC / CBSE<td><input type="radio" name="ssccbse" value="SSC" required>SSC&nbsp;&nbsp;<input type="radio" name="ssccbse" value="CBSE" required>CBSE</tr>
	   	<tr><td>Student Name(as per SSC)<td><input type="text" id="t1" name="t1" required value="<%=session.getAttribute("name")%>" size=30><td>Father Name(as per SSC)<td><input type="text" id="t2" name="t2" required size=30></tr>
		<tr><td>Mother Name(as per SSC)<td><input type="text" id="t3" name="t3" required><td>SSC Rollno<td><input type="text" id="t4" name="t4" pattern="[0-9]{10}" required></tr>
		<tr><td>SSC School Name(as per SSC)<td><input type="text" id="t5" name="t5" required><td>Month & Year of SSC Passed<td><select name="t6" required>
        <option value='-1'>select</option>
		<option value="January">January</option>
        <option value="February">February</option>
        <option value="March">March</option>
        <option value="April">April</option>
        <option value="May">May</option>
        <option value="June">June</option>
        <option value="July">July</option>
        <option value="August">August</option>
        <option value="September">September</option>
        <option value="October">October</option>
        <option value="November">November</option>
        <option value="December">December</option>
		</select> 
		
		<select name="t7" required>
		 <option value='-1'>select</option>
		<option value="2014">2014</option>
        <option value="2015">2015</option>
        <option value="2016">2016</option>
        <option value="2017">2017</option>
        </select> 
		
		</tr>
		<tr><td>SSC GPA<td><input type="text" id="t8" name="t8" required max="10.0" pattern="[-+]?[0-9]*[.,]?[0-9]+"><td>SSC Medium<td><input type="radio" value="English" name="t9" checked>English&nbsp;&nbsp;<input type="radio" value="Telugu" name="t9">Telugu</tr>
		<tr><td>Date of Birth<td><input type="date" id="t10" name="t10" required><td>Gender<td><input type="radio" value="male" name="t11" checked>Male&nbsp;&nbsp;<input type="radio" value="Female" name="t11">Female</tr>
		<tr><td>Identification Marks 1 (as per SSC)<td><input type="text" id="t12" name="t12" required><td>Identification Marks 2 (as per SSC)<td><input type="text" id="t13" name="t13" required></tr>
		</table><br>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
$('#sscForm').submit(function(){

// show that something is loading
//$('#response').html("<b>Loading response...</b>");

// Call ajax for pass data to other place
$.ajax({
type: 'POST',
url: 'sscstore1.jsp',
data: $(this).serialize() // getting filed value in serialize form
})
.done(function(data){ // if getting done then call.

// show the response
//$('#response').html(data);
	alert(data);
	//alert("SSC Details Inserted Successfully");
	location.reload();
})
.fail(function() { // if fail then getting message

// just in case posting your form failed
alert( "Posting failed." );

});

// to prevent refreshing the whole page page
return false;

});
});
</script> 
</div>
   <div id="tab2">
   	<form id="userForm">
	<table align=center width="100%" height="230px">
		<caption class="c1">INTER / CBSE <br><h6><font color='blue'>(*)</font>&nbsp;&nbsp;All fields are mandatory</h6></caption>
		<tr><td>Inter or CBSE<td><input type="radio" name="incbse" value="Intermediate" required>Inter&nbsp;&nbsp;&nbsp;<input type="radio" name="incbse" value="CBSE" required>CBSE<td>INTER/CBSE TC NO<td><input type="text" id="t10" name="t10" required pattern="[0-9]{10}"></tr>
	   	<tr><td>Inter/CBSE College Name<td><input type="text" required id="t1" name="t1"><td>Inter/CBSE College Place<td><input type="text" id="t2" name="t2" required></tr>
		<tr><td>Inter/CBSE Regd No<td><input type="text" id="t3" name="t3" required ><td>Month & Year of Inter Passed<td><select name="t4" required> <option value='-1'>select</option>
        <option value="January">January</option>
        <option value="February">February</option>
        <option value="March">March</option>
        <option value="April">April</option>
        <option value="May">May</option>
        <option value="June">June</option>
        <option value="July">July</option>
        <option value="August">August</option>
        <option value="September">September</option>
        <option value="October">October</option>
        <option value="November">November</option>
        <option value="December">December</option>
		</select> 
		
		<select name="t5" required>
		 <option value='-1'>select</option>
		<option value="2014">2014</option>
        <option value="2015">2015</option>
        <option value="2016">2016</option>
        <option value="2017">2017</option>
		<option value="2018">2018</option>
		<option value="2019">2019</option>
		</select> 
		</tr>
		<tr><td>Inter/CBSE Medium<td><input type="text" id="t6" name="t6" required><td>Ist Year GPA<td><input type="text" id="t7" name="t7" required pattern="[-+]?[0-9]*[.,]?[0-9]+"></tr>
		<tr><td>2nd Year GPA<td><input type="text" id="t8" name="t8" required pattern="[-+]?[0-9]*[.,]?[0-9]+"><td>INTER CGPA<td><input type="text" id="t9" name="t9" required pattern="[-+]?[0-9]*[.,]?[0-9]+"></tr>
	</table><br>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>
<script>
$(document).ready(function(){
$('#userForm').submit(function(){

// show that something is loading
//$('#response').html("<b>Loading response...</b>");

// Call ajax for pass data to other place
$.ajax({
type: 'POST',
url: 'interstore1.jsp',
data: $(this).serialize() // getting filed value in serialize form
})
.done(function(data){ // if getting done then call.

// show the response
//$('#response').html(data);
	alert(data);
	//alert("Intermediate Details Inserted Successfully");
	location.reload();
})
.fail(function() { // if fail then getting message

// just in case posting your form failed
alert( "Posting failed." );

});

// to prevent refreshing the whole page page
return false;

});
});
</script>

</div>
    <div id="tab3">
       <form id="eamcetForm" >
	<table align=center width="100%" height="230px">
		<caption class="c1">EAMCET DETAILS<br><h6><font color='blue'>(*)</font>&nbsp;&nbsp;All fields are mandatory</h </caption>
	   	<tr><td>Admission Type<td><input type="radio" name="t1" value="convenor" required>Convenor&nbsp;&nbsp;&nbsp;<input type="radio" name="t1" value="management" required>Management<td>Fee Reimbursement<td><input type="radio" name="t8" value="yes" required onClick="f3();">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="t8" value="no" required">No</tr>
		<tr><td>EAMCET Hallticket<td><input type="text" id="t2" name="t2" required pattern="[0-9]{10}" value="<%=session.getAttribute("ehall")%>"><td>EAMCET Rank<td><input type="text" id="t3" name="t3" required value="<%=session.getAttribute("rank")%>"></tr>
		<tr><td>Local Area<td><input type="text" id="t4" name="t4" required><td>Religion<td><input type="text" id="t5" name="t5" required></tr>
		<tr><td>Caste<td>
		<select id="t6" name="t6" required>
		 <option value='-1'>select</option>
		<option value="OC">OC</option>
		<option value="BC-A">BC-A</option>
		<option value="BC-B">BC-B</option>
		<option value="BC-C">BC-C</option>
		<option value="BC-D">BC-D</option>
		<option value="BC-E`">BC-E</option>
		<option value="SC">SC</option>
		<option value="ST">ST</option>
		</select>
		<td>Sub Caste<td><input type="text" id="t7" name="t7" required></tr>
		<tr><td>Nationality<td><input type="text" name="t9" id="t9" required value="Indian"></tr>
	</table><br>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>
	<script>
$(document).ready(function(){
$('#eamcetForm').submit(function(){

// show that something is loading
//$('#response').html("<b>Loading response...</b>");

// Call ajax for pass data to other place
$.ajax({
type: 'POST',
url: 'eamcetstore1.jsp',
data: $(this).serialize() // getting filed value in serialize form
})
.done(function(data){ // if getting done then call.

// show the response
//$('#response').html(data);
	alert(data);
	//alert("EAMCET Details Inserted Successfully");
	location.reload();
})
.fail(function() { // if fail then getting message

// just in case posting your form failed
alert( "Posting failed." );

});

// to prevent refreshing the whole page page
return false;

});
});
</script>
</div>
    <div id="tab4">
      <form id="aadharForm" >
	<table align=center width="100%" height="230px">
		<caption class="c1">AADHAR DETAILS</caption>
		<tr><td>Aadhar No<td><input type="text" id="t2" name="t2" required pattern="[0-9]{12}"><td></td></tr>
		<tr><td class="hh">Permanent Address</td></tr>
		<tr><td>State<td><select name="state" id="state" onChange="showDist(this.value);" required>
		<option value='-1'>Select State</option>
		<% 
			while(rs.next())
			{
					String s1 = rs.getString(1);
					String s2 = rs.getString(2);
					out.println("<option value='"+s1+"'>"+s2+"</option>");
			}
		%>	
		</select><td>District<td><select name="dist" id="dist" required><option value='-1'>Select District</option></select></tr>
		<tr><td>Mandal<td><input type="text" id="t3" name="t3" required><td>Village/Street/Area<td><input type="text" id="t4" name="t4" required></tr>
		<tr><td>House No<td><input type="text" id="t5" name="t5" required><td>Pincode<td><input type="text" id="t6" name="t6" required pattern="[0-9]{6}"></tr>
		<tr><td class="hh">Present Address</td><td ><input type="checkbox" name="pa" id="pa" onClick="f1();">Same as above</td></tr>
		<tr><td>Currently residing with/in<td><select  id="t8" name="t8" required>
		 <option value='-1'>select</option>
		<option>Parents</option>
		<option>Realtives</option>
		<option>Room</option>
		<option>URCE-Boys Hostel</option>
		<option>URCE-Girls Hostel</option>
		<option>Govt Hostel</option>
		<option>Private Hostel</option>
		</select>
		<td>Mode of Travel<td><select id="t9" name="t9" required>
		 <option value='-1'>select</option>
		<option>By Walk</option>
		<option>Own Vechicle</option>
		<option>College Bus</option>
		<option>RTC Pass</option>
		<option>Other</option>
		</select>
		</tr>
		<tr><td>State<td><select name="state1" id="state1" onChange="showDist1(this.value);" required>
		<option value='-1'>Select State</option>
		<% 
			rs = psmt.executeQuery();
			while(rs.next())
			{
					String s1 = rs.getString(1);
					String s2 = rs.getString(2);
					out.println("<option value='"+s1+"'>"+s2+"</option>");
			}
		%>	
		</select><td>District<td><select name="dist1" id="dist1" required><option value='-1'>Select District</option></select></tr>
		<tr><td>Mandal<td><input type="text" id="t10" name="t10" required><td>Village/Street/Area<td><input type="text" id="t11" name="t11" required></tr>
		<tr><td>House No<td><input type="text" id="t12" name="t12" required><td>Pincode<td><input type="text" id="t13" name="t13" required pattern="[0-9]{6}"></tr>
	<!--<tr id="h4" style="display:none" align="center"><td colspan=2><input type="radio" name="t1" value="College Hostel">College Hostel<input type="radio" name="t1" value="Govt Hostel">Govt.Hostel<input type="radio" name="t1" value="Private Hostel">Private Hostel</tr>-->
	</table>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>
	<script>
$(document).ready(function(){
$('#aadharForm').submit(function(){

// show that something is loading
//$('#response').html("<b>Loading response...</b>");

// Call ajax for pass data to other place
$.ajax({
type: 'POST',
url: 'adharstore1.jsp',
data: $(this).serialize() // getting filed value in serialize form
})
.done(function(data){ // if getting done then call.

// show the response
//$('#response').html(data);
	alert(data);
	//alert("AADHAR Details Inserted Successfully");
	location.reload();
})
.fail(function() { // if fail then getting message

// just in case posting your form failed
alert( "Posting failed." );

});

// to prevent refreshing the whole page page
return false;

});
});
</script>
    </div>
    <div id="tab5">
      <form id="otherForm">
	<table align=center width="100%" height="280px">
		<caption class="c1">OTHER DETAILS</caption>
	   	<tr><td>1.Student Mobile No<td><input type="text" id="t1" name="t1" required pattern="[0-9]{10}"><td>2.Mother Mobile No<td><input type="text" id="t2" name="t2" pattern="[0-9]{10}"></tr>
		<tr><td>3.Father Mobile No<td><input type="text" id="t3" name="t3"  pattern="[0-9]{10}"><td>4.Mobile No for Message<td><input type="text" id="t4" name="t4" required pattern="[0-9]{10}" value="<%=session.getAttribute("message")%>"></tr>
		<tr><td>5.Father Occupation<td><input type="text" id="t5" name="t5" required><td>6.Mother Occupation<td><input type="text" id="t6" name="t6" required></tr>
		<tr><td>7.Parent Annual Income<td><input type="text" id="t7" name="t7" ><td>8.Mother Tongue<td><input type="text" id="t8" name="t8" required></tr>
		<tr><td>9.Actual Date of Birth<td><input type="date" id="t9" name="t9" required><td>10.Guardian Name<td><input type="text" id="t10" name="t10" ></tr>
		<tr><td>11.Guardian Mobile No<td><input type="text" id="t11" name="t11" pattern="[0-9]{10}"><td>12.Parent Email Id<td><input type="email" id="t12" name="t12" ></tr>
		<tr><td>13.Student Email Id<td><input type="email" id="t13" name="t13" ><td>14.Student Blood Group<td><input type="text" id="t14" name="t14" ></tr>
		<tr><td>15.Student Bank Account No<td><input type="text" id="t15" name="t15"><td>16.Name of the Bank<td><input type="text" id="t16" name="t16"></tr>
		<tr><td>17.Bank IFSC Code<td><input type="text" id="t17" name="t17"><td>18.Gothram<td><input type="text" id="t18" name="t18" ></tr> 
	</table>
	<p align="center">
		<input type="submit" value="Submit" align="right">
	</p>
	</form>
	<script>
$(document).ready(function(){
$('#otherForm').submit(function(){

// show that something is loading
//$('#response').html("<b>Loading response...</b>");

// Call ajax for pass data to other place
$.ajax({
type: 'POST',
url: 'otherstore1.jsp',
data: $(this).serialize() // getting filed value in serialize form
})
.done(function(data){ // if getting done then call.

// show the response
//$('#response').html(data);
	alert(data);
	//alert("Other Details Inserted Successfully");
	location.reload();
})
.fail(function() { // if fail then getting message

// just in case posting your form failed
alert( "Posting failed." );

});

// to prevent refreshing the whole page page
return false;

});
});
</script>
 </div>
 <div id="tab6">
	<%
	String color="";
	String rollno=(String)session.getAttribute("rollno");
	String branch=(String)session.getAttribute("branch");
	//psmt=con.prepareStatement("select s1.student_name,s1.date_of_birth,o1.student_mobileno,a1.house_no,a1.village_street_area,a1.mandal,a1.district,a1.state,a1.pincode from ssc_details s1,other_details o1,adhar_permanent_address a1 where s1.rollno=? and o1.rollno=? and a1.rollno=?"); 
	psmt=con.prepareStatement("select student_name,date_of_birth,student_mobileno,house_no,village_street_area,mandal,district,state,pincode from all_students where rollno=?");
	psmt.setString(1,rollno);
	
	ResultSet rss=psmt.executeQuery();
	if(branch.equals("CSE"))
	{
		color="brown";
	}
	else if(branch.equals("ECE"))
	{
		color="blue";
	}
	else if(branch.equals("CIVIL"))
	{
		color="orange";
	}
	else if(branch.equals("MECH"))
	{
		color="green";
	}
	else if(branch.equals("EEE"))
	{
		color="gray";
	}
	else
	{
		color="red";
	}
	if(rss.next()){%>
	<table style='position:relative;top:5px;left:350px;width:450px;height:260px;' border=1><tr align=center><td><img src='./photos/<%=str%>.JPG' width='100px' height='100px' align="top"></img><br><p style="background-color:<%=color%>;color:white;border-top-right-radius: 20px 20px;"><%=rss.getString(1)%><br>Regd No :<%=rollno%><br>Program : B.Tech(<%=branch%>)<br>Date of Birth:<%=rss.getString(2)%><br>Mobile No:<%=rss.getString(3)%><br>--------<br><%=rss.getString(4)%>,<%=rss.getString(5)%>,<%=rss.getString(6)%><br><%=rss.getString(7)%>,<%=rss.getString(8)%>,<%=rss.getString(9)%></p><td><img src='./photos/<%=str%>.JPG' width='100px' height='100px'></img><br><p style="background-color:<%=color%>;color:white;border-top-right-radius: 20px 20px;"><%=rss.getString(1)%><br>Regd No :<%=rollno%><br>Program : B.Tech(<%=branch%>)<br>Date of Birth:<%=rss.getString(2)%><br>Mobile No:<%=rss.getString(3)%></p></tr></table>
	<%
	}
	%>	
  </div>
  </section>
</div>
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
    <script src="js/index.js"></script>
</body>
</html>
