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
  background-color: aliceblue;
  width : 100%;
  font-family: sans-serif;
  color: blue;
  font-size: 14px;
  height : 490px;
}

.c1
{
	background-color : lightblue;
	color : white;
	font-weight : bold;
}

.button {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 20px;
  width: 250px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

</style>
<meta charset="utf-8">
<title>Report Panel</title>
<link href="style.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
</head>
<body>
	<div id="maingrid">
		<div>
			<img alt="" id="clglogo" src="urce.jpg">
		</div>
	</div>

<%
		String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s14="",s15="",s16="",s17="",s18="";
		String s19="",s20="",s21="",s22="",s23="",s24="";
		String s25="",s26="",s27="",s28="",s29="",s30="",s31="";
		String s32="",s33="",s34="",s35="",s36="",s37="",s38="";
		String s39="",s40="",s41="",s42="",s43="",s44="",s45="",s46="";
		
		String s47="",s48="",s49="",s50="",s51="",s52="";
		String s53="",s54="",s55="",s56="",s57="",s58="";
		String s59="",s60="",s61="",s62="",s63="",s64="";
		
		
		
		
		PdfWriter writer=null;
		String url = "jdbc:mysql://localhost:3306/"; 
		String dbName = "data";
		String driver = "com.mysql.jdbc.Driver"; 
		String userName = "root"; 
		String password = "root"; 
		Class.forName(driver).newInstance(); 
		Connection conn = DriverManager.getConnection(url+dbName,userName,password);		
		String str="pdf";
		PreparedStatement ps=null;
		ResultSet rs=null; 
		Document document = null;
		Image image1 = null;
      try
      {
	  String query = "select *from all_students";          //Fetching data from table
       ps=conn.prepareStatement(query);                // executing query
       rs=ps.executeQuery();
    while(rs.next())
    {
    	s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		s9=rs.getString(9);
		s10=rs.getString(10);
		s11=rs.getString(11);
		s12=rs.getString(12);
		s13=rs.getString(13);
		s14=rs.getString(14);
		s15=rs.getString(15);
		s16=rs.getString(16);
		s17=rs.getString(17);
		s18=rs.getString(18);
		s19=rs.getString(19);
		s20=rs.getString(20);
		s21=rs.getString(21);
		s22=rs.getString(22);
		s23=rs.getString(23);
		s24=rs.getString(24);
		s25=rs.getString(25);
		s26=rs.getString(26);
		s27=rs.getString(27);
		s28=rs.getString(28);
		s29=rs.getString(29);
		s30=rs.getString(30);
		s31=rs.getString(31);
		s32=rs.getString(32);
		s33=rs.getString(33);
		s34=rs.getString(34);
		s35=rs.getString(35);
		s36=rs.getString(36);
		s37=rs.getString(37);
		s38=rs.getString(38);
		s39=rs.getString(39);
		s40=rs.getString(40);
		s41=rs.getString(41);
		s42=rs.getString(42);
		s43=rs.getString(43);
		s44=rs.getString(44);
		s45=rs.getString(45);
		s46=rs.getString(46);
		
		s47=rs.getString(47);
		s48=rs.getString(48);
		s49=rs.getString(49);
		s50=rs.getString(50);
		s51=rs.getString(51);
		s52=rs.getString(52);
		s53=rs.getString(53);
		s54=rs.getString(54);
		s55=rs.getString(55);
		s56=rs.getString(56);
		s57=rs.getString(57);
		s58=rs.getString(58);
		s59=rs.getString(59);
		s60=rs.getString(60);
		s61=rs.getString(61);
		s62=rs.getString(62);
		s63=rs.getString(63);
		s64=rs.getString(64);
				
		
		String fileName=s1+".pdf";
		document=new Document();
		image1 = Image.getInstance("http://localhost:9000/StuData/photos/"+s1+".JPG");
		image1.setAbsolutePosition(400f, 700f);
		image1.scaleAbsolute(100, 100); 
		writer = PdfWriter.getInstance(document, new FileOutputStream("d:\\ALLPDF\\"+fileName));
        document.open();
		out.println("<center>");
		document.add(image1);
		document.add(new Paragraph("\t\t\t\t\t\tStudent SSC/CBSE Details\n\t\t\t\t\t-----------------\n"));
		document.add(new Paragraph("Student Rollno:  "+s1+"\nStudent Name :  "+s2+"\nFather Name:  "+s3+"\nMother Name:  "+s4+"\nSSC Rollno:  "+s5+"\nSSC School Name:  "+s6+"\nMonth SSC Passed:  "+s7+"\nYear SSC Passed:  "+s8+"SSC CGPA:  "+s9+"\nSSC Medium: "+s10+"\nDate of Birth:  "+s11+"\nGender:  "+s12+"\nIdentification Marks1:  "+s13+"\nIdentification Marks2:  "+s14));
		document.add(new Paragraph("\t\t\t\t\t\t\nStudent INTER/CBSE Details\n\t\t\t\t\t-----------------\n"));
		document.add(new Paragraph("Inter Collge Name:  "+s15+"\nInter College Place:  "+s16+"\nInter Regdno:  "+s17+"\nMonth Inter Passed:  "+s18+"\nYear Inter Passed:  "+s19+"\nInter Medium:  "+s20+"\nInter Firstyear CGPA:  "+s21+"\nInter Secondyear CGPA:  "+s22+"\nInter Final CGPA:  "+s23+"\nInter Plustotype:  "+s24));
		document.add(new Paragraph("\t\t\t\t\t\t\nStudent EAMCET Details\n\t\t\t\t\t-----------------\n"));
		document.add(new Paragraph("Admission Type:  "+s25+"\nEAMCET Hallticketno:  "+s26+"\n EAMCET Rank:  "+s27+"\nLocal Area:  "+s28+"\nReligion:  "+s29+"\nCaste:  "+s30+"\nSubcaste:  "+s31));
		document.add(new Paragraph("\t\t\t\t\t\t\n\n\nStudent AADHAR Details\n\t\t\t\t\t-----------------\n"));
		document.add(new Paragraph("Aadhar No:  "+s32+"\nState:  "+s33+"\nDistrict:  "+s34+"\nMandal:  "+s35+"\nVillage/Street/Area:  "+s36+"\nHouse No:  "+s37+"\nPincode:  "+s38));
		document.add(new Paragraph("\t\t\t\t\t\t\nPresent Address\n\t\t\t\t\t-----------------\n"));
		document.add(new Paragraph("Currently Living with/in : "+s39+"\nMode of Travel:  "+s40+"\nState:  "+s41+"\nDistrict:  "+s42+"\nMandal:  "+s43+"\nVillage/Street/Area:  "+s44+"\nHouseouse No:  "+s45+"\nPincode:  "+s46));
		document.add(new Paragraph("\t\t\t\t\t\t\nOther Details\n\t\t\t\t\t-----------------\n"));
		document.add(new Paragraph("Student Mobileno:  "+s47+"\nMother Mobileno:  "+s48+"\nFather Mobileno:  "+s49+"\nMobileno Message:  "+s50+"\nMother Occupation:  "+s51+"\nFather Occupation:  "+s52+"\nAnnual Income:  "+s53+"\nMother Aadharno:  "+s54+"\nFather Aadharno:  "+s55+"\nGuardian Name:  "+s56+"\nGuardian Mobileno:  "+s57+"\nParent Emailid:  "+s58+"\nStudent Emailid:  "+s59+"\nStudent Bloodgroup:  "+s60+"\nStudent Bank Accountno:  "+s61+"\nStudent Bank Name:  "+s62+"\nStudent Bank IFSC Code:  "+s63+"\nStudent Gothram:  "+s64));	document.close();   
		document.close();   
    }
	
    writer.close();
		 
		 out.println("<br><br><br><br><p align='center' style='color:red;font-size:30px;font-weight:bold'>Student Profile PDFs are Generated<br><br>");
		 out.println("<p style='position:absolute;top:350px;left:450px;'><a href='AdminHome.jsp'>Admin Home</a></p>");
		 
      } catch (DocumentException e)
      {
         e.printStackTrace();
      } catch (FileNotFoundException e)
      {
         e.printStackTrace();
      }


%>
</body>
</html>