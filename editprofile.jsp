<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.itextpdf.text.Document"%>
<%@ page import="com.itextpdf.text.DocumentException"%>
<%@ page import="com.itextpdf.text.Paragraph"%>
<%@ page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.FileOutputStream"%>
<%@ page import="com.itextpdf.text.BaseColor"%>
<%@ page import="com.itextpdf.text.Element"%>
<%@ page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@ page import="com.itextpdf.text.pdf.PdfPTable"%>

<%@ page import="java.net.URL"%>
<%@ page import="com.itextpdf.text.Image"%>


<%
	int n=0;
	String str=(String)session.getAttribute("rollno");
	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = null;
	ResultSet rs = null;
%>

<!DOCTYPE html>
<html>
<head>
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
  background-size: cover;
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
	grid-template-columns: 75% 10% 15%;
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
		<p align='center'><a href="AdminHome.jsp" style="position:absolute;top:50px;left:700px;color:white">Admin Home</a></p>
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
	<li><a href="#tab6">Generate PDF</a></li>
	</ul>
  <section id="first-tab-group" class="tabgroup">
    <div id="tab1">
	<%
		psmt=con.prepareStatement("select student_name,father_name,mother_name,ssc_rollno,ssc_school_name,month_ssc_passed,year_ssc_passed,ssc_cgpa,ssc_medium,date_of_birth,gender,identification_marks1,identification_marks2 from all_students where rollno=?");
		psmt.setString(1,str);
		rs=psmt.executeQuery();
		rs.next();
	%>
	 <form id="sscForm">
	<table align=center width="100%" height="230px">
		<caption class="c1">SSC / CBSE DETAILS<br><h6><font color='blue'>(*)</font>&nbsp;&nbsp;All fields are mandatory</h6></caption>
	   	<tr><td>Student Name(as per SSC)<td><input type="text" id="t1" name="t1" required value="<%=rs.getString(1)%>" size=30><td>Father Name(as per SSC)<td><input type="text" id="t2" name="t2" required size=30 value="<%=rs.getString(2)%>"></tr>
		<tr><td>Mother Name(as per SSC)<td><input type="text" id="t3" name="t3" required value="<%=rs.getString(3)%>"><td>SSC Rollno<td><input type="text" id="t4" name="t4" pattern="[0-9]{10}" required value="<%=rs.getString(4)%>"></tr>
		<tr><td>SSC School Name(as per SSC)<td><input type="text" id="t5" name="t5" required value="<%=rs.getString(5)%>"><td>Month & Year of SSC Passed<td><input type="text" name="t6" required value="<%=rs.getString(6)%>">
        <input type="text" name="t7" required value="<%=rs.getString(7)%>">
		</tr>
		<tr><td>SSC CGPA<td><input type="text" id="t8" name="t8" required max="10.0" pattern="[-+]?[0-9]*[.,]?[0-9]+" value="<%=rs.getString(8)%>"><td>SSC Medium<td><input type="text" value="<%=rs.getString(9)%>" name="t9">
		<tr><td>Date of Birth<td><input type="text" id="t10" name="t10" required value="<%=rs.getString(10)%>"><td>Gender<td><input type="text" value="<%=rs.getString(11)%>" name="t11"></tr>
		<tr><td>Identification Marks 1 (as per SSC)<td><input type="text" id="t12" name="t12" required value="<%=rs.getString(12)%>"><td>Identification Marks 2 (as per SSC)<td><input type="text" id="t13" name="t13" required value="<%=rs.getString(13)%>"></tr>
		</table><br>
	<p align="center">
		<input type="submit" value="Update" align="right">
	</p>
	</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js "></script>
<script>
$(document).ready(function(){
$('#sscForm').submit(function(){

// show that something is loading
//$('#response').html("<b>Loading response...</b>");

// Call ajax for pass data to other place
$.ajax({
type: 'POST',
url: 'sscstore2.jsp',
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
   <%
		psmt=con.prepareStatement("select inter_plustotype,inter_collge_name,inter_college_place,inter_regd_num,month_inter_passed,year_inter_passed,inter_medium,inter_first_cgpa,inter_second_cgpa,inter_final_cgpa from all_students where rollno=?");
		psmt.setString(1,str);
		rs=psmt.executeQuery();
		rs.next();
	%>
   	<form id="userForm">
	<table align=center width="100%" height="230px">
		<caption class="c1">INTER / CBSE <br><h6><font color='blue'>(*)</font>&nbsp;&nbsp;All fields are mandatory</h6></caption>
		<tr><td>Inter or CBSE<td><input type="text" name="incbse" required value="<%=rs.getString(1)%>"></tr>
	   	<tr><td>Inter/CBSE College Name<td><input type="text" required id="t1" name="t1" value="<%=rs.getString(2)%>"><td>Inter/CBSE College Place<td><input type="text" id="t2" name="t2" required value="<%=rs.getString(3)%>"></tr>
		<tr><td>Inter/CBSE Regd No<td><input type="text" id="t3" name="t3" required value="<%=rs.getString(4)%>"><td>Month & Year of Inter Passed<td><input type="text" name="t4" required value="<%=rs.getString(5)%>"> 		
		<input type="text" name="t5" required value="<%=rs.getString(6)%>">
		</tr>
		<tr><td>Inter/CBSE Medium<td><input type="text" id="t6" name="t6" required value="<%=rs.getString(7)%>"><td>Ist Year CGPA<td><input type="text" id="t7" name="t7" required pattern="[-+]?[0-9]*[.,]?[0-9]+" value="<%=rs.getString(8)%>"></tr>
		<tr><td>2nd Year CGPA<td><input type="text" id="t8" name="t8" required pattern="[-+]?[0-9]*[.,]?[0-9]+" value="<%=rs.getString(9)%>"><td>Final CGPA<td><input type="text" id="t9" name="t9" required pattern="[-+]?[0-9]*[.,]?[0-9]+" value="<%=rs.getString(10)%>"></tr>
	</table><br>
	<p align="center">
		<input type="submit" value="Update" align="right">
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
	 <%
		psmt=con.prepareStatement("select admin_type,eamcet_hallticket,eamcet_rank,local_area,religion,caste,subcaste from  all_students where rollno=?");
		psmt.setString(1,str);
		rs=psmt.executeQuery();
		rs.next();
	%>
       <form id="eamcetForm" >
	<table align=center width="100%" height="230px">
		<caption class="c1">EAMCET DETAILS<br><h6><font color='blue'>(*)</font>&nbsp;&nbsp;All fields are mandatory</h </caption>
	   	<tr><td>Admission Type<td><input type="text" name="t1" value="<%=rs.getString(1)%>" required></tr>
		<tr><td>EAMCET Hallticket<td><input type="text" id="t2" name="t2" required pattern="[0-9]{10}" value="<%=rs.getString(2)%>"><td>EAMCET Rank<td><input type="text" id="t3" name="t3" required value="<%=rs.getString(3)%>"></tr>
		<tr><td>Local Area<td><input type="text" id="t4" name="t4" required value="<%=rs.getString(4)%>"><td>Religion<td><input type="text" id="t5" name="t5" required value="<%=rs.getString(5)%>"></tr>
		<tr><td>Caste<td>
		<input type="text" id="t6" name="t6" required value="<%=rs.getString(6)%>">
		<td>Sub Caste<td><input type="text" id="t7" name="t7" required value="<%=rs.getString(7)%>"></tr>
	</table><br>
	<p align="center">
		<input type="submit" value="Update" align="right">
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
	 <%
		psmt=con.prepareStatement("select adharno,state,district,mandal,village_street_area,house_no,pincode,residence_type,mode_of_travel,pstate,pdistrict,pmandal,pvillage_street_area,phouse_no,ppincode from  all_students where rollno=?");
		psmt.setString(1,str);
		rs=psmt.executeQuery();
		rs.next();
	%>
      <form id="aadharForm" >
	<table align=center width="100%" height="230px">
		<caption class="c1">AADHAR DETAILS</caption>
		<tr><td>Aadhar No<td><input type="text" id="t2" name="t2" required pattern="[0-9]{12}" value="<%=rs.getString(1)%>"><td></td></tr>
		<tr><td class="hh">Permanent Address</td></tr>
		<tr><td>State<td><input type="text" name="state" id="state" required value="<%=rs.getString(2)%>">
		<td>District<td><input type="text" name="dist" id="dist" required value="<%=rs.getString(3)%>" ></tr>
		<tr><td>Mandal<td><input type="text" id="t3" name="t3" required value="<%=rs.getString(4)%>"><td>Village/Street/Area<td><input type="text" id="t4" name="t4" required value="<%=rs.getString(5)%>"></tr>
		<tr><td>House No<td><input type="text" id="t5" name="t5" required value="<%=rs.getString(6)%>"><td>Pincode<td><input type="text" id="t6" name="t6" required pattern="[0-9]{6}" value="<%=rs.getString(7)%>"></tr>
		<tr><td class="hh">Present Address</td><td ></tr>
		<tr><td>Currently residing with/in<td><input type="text"  id="t8" name="t8" required value="<%=rs.getString(8)%>">
		<td>Mode of Travel<td><input type="text" id="t9" name="t9" required value="<%=rs.getString(9)%>">
		</tr>
		<tr><td>State<td><input type=text name="state1" id="state1" required value="<%=rs.getString(10)%>">
		<td>District<td><input type="text" name="dist1" id="dist1" required value="<%=rs.getString(11)%>"></tr>
		<tr><td>Mandal<td><input type="text" id="t10" name="t10" required value="<%=rs.getString(12)%>"><td>Village/Street/Area<td><input type="text" id="t11" name="t11" required value="<%=rs.getString(13)%>"></tr>
		<tr><td>House No<td><input type="text" id="t12" name="t12" required value="<%=rs.getString(14)%>"><td>Pincode<td><input type="text" id="t13" name="t13" required pattern="[0-9]{6}" value="<%=rs.getString(15)%>"></tr>
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
	<%
		psmt=con.prepareStatement("select  student_mobileno,mother_mobileno,father_mobileno,mobileno_message,mother_occupation,father_occupation,annual_income,mother_aadharno,father_aadharno,guardian_name,guardian_mobileno,parent_emailid,student_emailid,student_bolldgroup,student_bank_accountno,student_bank_name,student_bank_IFSC,student_gothram from all_students where rollno=?");
		psmt.setString(1,str);
		rs=psmt.executeQuery();
		rs.next();
	%>
      <form id="otherForm">
	<table align=center width="100%" height="280px">
		<caption class="c1">OTHER DETAILS</caption>
	   	<tr><td>1.Student Mobile No<td><input type="text" id="t1" name="t1" required pattern="[0-9]{10}" value="<%=rs.getString(1)%>"><td>2.Mother Mobile No<td><input type="text" id="t2" name="t2" pattern="[0-9]{10}" value="<%=rs.getString(2)%>"></tr>
		<tr><td>3.Father Mobile No<td><input type="text" id="t3" name="t3" required pattern="[0-9]{10}" value="<%=rs.getString(3)%>"><td>4.Mobile No for Message<td><input type="text" id="t4" name="t4" required pattern="[0-9]{10}" value="<%=rs.getString(4)%>"></tr>
		<tr><td>5.Father Occupation<td><input type="text" id="t5" name="t5" required value="<%=rs.getString(5)%>"><td>6.Mother Occupation<td><input type="text" id="t6" name="t6" required value="<%=rs.getString(6)%>"></tr>
		<tr><td>7.Parent Annual Income<td><input type="text" id="t7" name="t7" value="<%=rs.getString(7)%>"><td>8.Mother Aadhar No<td><input type="text" id="t8" name="t8" required pattern="[0-9]{12}" value="<%=rs.getString(8)%>"></tr>
		<tr><td>9.Father Aadhar No<td><input type="text" id="t9" name="t9" required pattern="[0-9]{12}" value="<%=rs.getString(9)%>"><td>10.Guardian Name<td><input type="text" id="t10" name="t10" value="<%=rs.getString(10)%>"></tr>
		<tr><td>11.Guardian Mobile No<td><input type="text" id="t11" name="t11" pattern="[0-9]{10}" value="<%=rs.getString(11)%>"><td>12.Parent Email Id<td><input type="email" id="t12" name="t12" value="<%=rs.getString(12)%>"></tr>
		<tr><td>13.Student Email Id<td><input type="email" id="t13" name="t13" value="<%=rs.getString(13)%>"><td>14.Student Blood Group<td><input type="text" id="t14" name="t14" value="<%=rs.getString(14)%>" ></tr>
		<tr><td>15.Student Bank Account No<td><input type="text" id="t15" name="t15" required value="<%=rs.getString(15)%>"><td>16.Name of the Bank<td><input type="text" id="t16" name="t16" required value="<%=rs.getString(16)%>"></tr>
		<tr><td>17.Bank IFSC Code<td><input type="text" id="t17" name="t17" value="<%=rs.getString(17)%>"><td>18.Gothram<td><input type="text" id="t18" name="t18" value="<%=rs.getString(18)%>"></tr> 
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
	
	<br><br>
	<p align='center'><a href='IndPDFGen.jsp'>Click Here</a>&nbsp;&nbsp; to Generate Individual PDF</p>
	
 </div>
  </section>
</div>
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
    <script src="js/index.js"></script>
</body>
</html>
