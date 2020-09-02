<%@ taglib uri="choiceuri" prefix="urce" %>
<%@ page import="p1.*" %>
<%@ page import="java.sql.*" %>
<%
	DB b = new DB();
	Connection con = b.connect();
	PreparedStatement psmt = null;
	ResultSet rs = null;
	psmt=con.prepareStatement("SELECT column_name FROM information_schema.columns WHERE table_name = 'ssc_details'");
	rs = psmt.executeQuery();
	
%>
<!doctype html>
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
#maingrid {
        display: grid;
        grid-template-rows: 20% 80%;
		}
 
 .wrapper1 {
  display: grid;
  grid-template-columns: auto auto auto auto auto auto;
  grid-gap: 1px;
  background-color: aliceblue;
  color: #444;
  width : 100%;
  font-family: sans-serif;
  color: blue;
  font-size: 14px;
  height : 450px;
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
	background-color : lightblue;
	color : white;
	font-weight : bold;
}

</style>
<script>
function toggle(source) {
  checkboxes = document.getElementsByName('cb');
  for(var i=0, n=checkboxes.length;i<n;i++) {
    checkboxes[i].checked = source.checked;
  }
}
</script>
<meta charset="utf-8">
<title>Report Panel</title>
<link href="style.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
</head>
<body>
<form action="Report.jsp" method="POST">
	<div id="maingrid">
		<div>
			<img alt="" id="clglogo" src="urce.jpg">
		</div>
	</div>
	<br>
<div class="wrapper1">
<div>
<table cellspacing="10px;">
 <caption class="c1">SSC / CBSE</caption>
<tr>
<td nowrap><input type='checkbox' name='cb' value='student_name'>student_name
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='father_name'>father_name
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='mother_name'>mother_name
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='ssc_rollno'>ssc_rollno
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='ssc_school_name'>ssc_school_name
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='month_ssc_passed'>month_ssc_passed
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='year_ssc_passed'>year_ssc_passed
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='ssc_cgpa'>ssc_cgpa
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='ssc_medium'>ssc_medium
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='date_of_birth'>date_of_birth
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='gender'>gender
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='identification_marks1'>identification_marks1
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='identification_marks2'>identification_marks2
</tr>
</table>        
</div>
<div >
 <table cellspacing="10px;">
  <caption class="c1">INTER / CBSE</caption>
<tr>
<td nowrap><input type='checkbox' name='cb' value='inter_collge_name'>inter_collge_name
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='inter_college_place'>inter_college_place
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='inter_regd_num'>inter_regd_num
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='month_inter_passed'>month_inter_passed
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='year_inter_passed'>year_inter_passed
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='inter_medium'>inter_medium
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='inter_first_cgpa'>inter_first_cgpa
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='inter_second_cgpa'>inter_second_cgpa
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='inter_final_cgpa'>inter_final_cgpa
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='inter_plustotype'>inter_plustotype
</tr>
</table>
  </div>
  <div>
   <table cellspacing="10px;">
   <caption class="c1">EAMCET</caption>
<tr>
<td nowrap><input type='checkbox' name='cb' value='admin_type'>admin_type
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='eamcet_hallticket'>eamcet_hallticket
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='eamcet_rank'>eamcet_rank
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='local_area'>local_area
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='religion'>religion
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='caste'>caste
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='subcaste'>subcaste
</tr>
 </table> 
  </div>
  <div >
  <table cellspacing="10px;">
   <caption class="c1">AADHAR</caption>
<tr>
<td nowrap><input type='checkbox' name='cb' value='adharno'>adharno
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='state'>state
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='district'>district
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='mandal'>mandal
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='village_street_area'>village_street_area
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='house_no'>house_no
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='pincode'>pincode
</tr>
  </table>
  </div>
  <div >
  <table cellspacing="10px;">
   <caption class="c1">PRESENT ADDRESS</caption>
<tr>
<td nowrap><input type='checkbox' name='cb' value='residence_type'>residence_type
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='mode_of_travel'>mode_of_travel
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='pstate'>state
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='pdistrict'>district
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='pmandal'>mandal
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='pvillage_street_area'>village_street_area
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='phouse_no'>house_no
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='ppincode'>pincode
</tr>
</table>
</div>
  <div>
<table cellspacing="5px;">
    <caption class="c1">OTHERS</caption>
<tr>
<td nowrap><input type='checkbox' name='cb' value='student_mobileno'>student_mobileno
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='mother_mobileno'>mother_mobileno
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='father_mobileno'>father_mobileno
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='mobileno_message'>mobileno_message
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='mother_occupation'>mother_occupation
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='father_occupation'>father_occupation
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='annual_income'>annual_income
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='mother_aadharno'>mother_aadharno
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='father_aadharno'>father_aadharno
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='guardian_name'>guardian_name
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='guardian_mobileno'>guardian_mobileno
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='parent_emailid'>parent_emailid
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='student_emailid'>student_emailid
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='student_bolldgroup'>student_bolldgroup
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='student_bank_accountno'>student_bank_accountno
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='student_bank_name'>student_bank_name
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='student_bank_IFSC'>student_bank_IFSC
</tr>
<tr>
<td nowrap><input type='checkbox' name='cb' value='student_gothram'>student_gothram
</tr>
</table>
  </div>
  <br>
  <p align='center'><input type=submit value="Submit" width="100%"></p><p><input type="checkbox" onClick="toggle(this);" /> Select All</p><p><a href="AdminHome.jsp">Admin Home</a></p>
</div>
 </form>
</body>
</html>
