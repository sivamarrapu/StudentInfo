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
<%@ page import="com.itextpdf.text.Phrase"%>
<%@ page import="com.itextpdf.text.Font"%>
<%@ page import="com.itextpdf.text.Rectangle"%>
<%@ page import="com.itextpdf.text.PageSize"%>
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
		Font catFont = new Font(Font.FontFamily.TIMES_ROMAN, 15,Font.BOLD,BaseColor.BLUE);
		DB b = new DB();
		Connection con = b.connect();
		
		String str=(String)session.getAttribute("rollno");
		
		String fName=str+".pdf";
		
		response.setContentType("application/pdf");
		response.setHeader("Content-Disposition", "attachment; filename="+fName);
		
		String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s14="",s15="",s16="",s17="",s18="";
		String s19="",s20="",s21="",s22="",s23="",s24="";
		String s25="",s26="",s27="",s28="",s29="",s30="",s31="";
		String s32="",s33="",s34="",s35="",s36="",s37="",s38="";
		String s39="",s40="",s41="",s42="",s43="",s44="",s45="",s46="";
		
		String s47="",s48="",s49="",s50="",s51="",s52="";
		String s53="",s54="",s55="",s56="",s57="",s58="";
		String s59="",s60="",s61="",s62="",s63="",s64="",s65="",s66="",s67="",s68="";
			
		PdfWriter writer=null;
		PreparedStatement ps=null;
		ResultSet rs=null; 
		Document document = null;
	try
      {
		ps=con.prepareStatement("select *from all_students where rollno=?");
		ps.setString(1,str);
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
		s65=rs.getString(65);
		s66=rs.getString(66);
		s67=rs.getString(67);
		s68=rs.getString(68);
		
		String fileName=s1+".pdf";
		document=new Document(PageSize.A4);
		//document.setBorder(new DashedBorder(Color.DARK_GRAY, 3));
		writer = PdfWriter.getInstance(document,response.getOutputStream());
		//PdfWriter.getInstance(document, response.getOutputStream());
		Image image1 = Image.getInstance("http://localhost:9000/StuData/photos/"+str+".JPG");
		image1.setAbsolutePosition(250f, 780f);
		image1.scaleAbsolute(60, 60); 
		document.open();
		PdfPTable t = new PdfPTable(1);
		PdfPCell c12 = new PdfPCell(new Paragraph(s1));
		t.addCell(c12);
		t.setTotalWidth(79f);
		t.writeSelectedRows(0, -1, 240, 775, writer.getDirectContent());
		document.add(image1);
		PdfPTable table = new PdfPTable(2);
		PdfPCell  c = new PdfPCell(new Paragraph("SSC / CBSC Details",catFont));
		c.setColspan(2);
		c.setHorizontalAlignment(Element.ALIGN_CENTER);
		c.setBackgroundColor(BaseColor.GREEN);
		table.addCell(c);
		//PdfPCell cell1 = new PdfPCell(new Paragraph("Student Roll No"));
		//PdfPCell cell2 = new PdfPCell(new Paragraph(s1));
		PdfPCell cell3 = new PdfPCell(new Paragraph("Student Name"));
		PdfPCell cell4 = new PdfPCell(new Paragraph(s2));
		PdfPCell cell5 = new PdfPCell(new Paragraph("Father Name"));
		PdfPCell cell6 = new PdfPCell(new Paragraph(s3));
		PdfPCell cell7 = new PdfPCell(new Paragraph("Mother Name"));
		PdfPCell cell8 = new PdfPCell(new Paragraph(s4));
		PdfPCell cell9 = new PdfPCell(new Paragraph("SSC Rollno"));
		PdfPCell cell10 = new PdfPCell(new Paragraph(s5));
		PdfPCell cell11 = new PdfPCell(new Paragraph("SSC School Name"));
		PdfPCell cell12 = new PdfPCell(new Paragraph(s6));
		PdfPCell cell13 = new PdfPCell(new Paragraph("Month & Year SSC Passed"));
		PdfPCell cell14 = new PdfPCell(new Paragraph(s7+"/"+s8));
		PdfPCell cell15 = new PdfPCell(new Paragraph("SSC CGPA"));
		PdfPCell cell16 = new PdfPCell(new Paragraph(s9));
		PdfPCell cell17 = new PdfPCell(new Paragraph("SSC Medium"));
		PdfPCell cell18 = new PdfPCell(new Paragraph(s10));
		PdfPCell cell19 = new PdfPCell(new Paragraph("Date of Birth"));
		PdfPCell cell20 = new PdfPCell(new Paragraph(s11));
		PdfPCell cell21 = new PdfPCell(new Paragraph("Gender"));
		PdfPCell cell22 = new PdfPCell(new Paragraph(s12));
		PdfPCell cell23 = new PdfPCell(new Paragraph("Identification Marks1"));
		PdfPCell cell24 = new PdfPCell(new Paragraph(s13));
		PdfPCell cell25 = new PdfPCell(new Paragraph("Identification Marks2"));
		PdfPCell cell26 = new PdfPCell(new Paragraph(s14));
		//table.addCell(cell1);
		//table.addCell(cell2);
		table.addCell(cell3);
		table.addCell(cell4);
		table.addCell(cell5);
		table.addCell(cell6);
		table.addCell(cell7);
		table.addCell(cell8);
		table.addCell(cell9);
		table.addCell(cell10);
		table.addCell(cell11);
		table.addCell(cell12);
		table.addCell(cell13);
		table.addCell(cell14);
		table.addCell(cell15);
		table.addCell(cell16);
		table.addCell(cell17);
		table.addCell(cell18);
		table.addCell(cell19);
		table.addCell(cell20);
		table.addCell(cell21);
		table.addCell(cell22);
		table.addCell(cell23);
		table.addCell(cell24);
		table.addCell(cell25);
		table.addCell(cell26);
		table.setTotalWidth(280f);
		table.writeSelectedRows(0, -1, 20, 740, writer.getDirectContent());

		PdfPTable table1 = new PdfPTable(2);
		c = new PdfPCell(new Paragraph("INTER / CBSC Details",catFont));
		c.setColspan(2);
		c.setHorizontalAlignment(Element.ALIGN_CENTER);
		c.setBackgroundColor(BaseColor.GREEN);
		table1.addCell(c);
		cell3 = new PdfPCell(new Paragraph("Inter Collge Name"));
		 cell4 = new PdfPCell(new Paragraph(s16));
		 cell5 = new PdfPCell(new Paragraph("Inter College Place"));
		 cell6 = new PdfPCell(new Paragraph(s17));
		 cell7 = new PdfPCell(new Paragraph("Inter Regdno"));
		 cell8 = new PdfPCell(new Paragraph(s18));
		 cell9 = new PdfPCell(new Paragraph("Month & Year Inter Passed"));
		 cell10 = new PdfPCell(new Paragraph(s19+"/"+s20));
		 cell11 = new PdfPCell(new Paragraph("Inter Medium"));
		 cell12 = new PdfPCell(new Paragraph(s21));
		 cell13 = new PdfPCell(new Paragraph("INTER / CBSE"));
		 cell14 = new PdfPCell(new Paragraph(s25));
		 cell15 = new PdfPCell(new Paragraph("Inter Firstyear GPA"));
		 cell16 = new PdfPCell(new Paragraph(s22));
		 cell17 = new PdfPCell(new Paragraph("Inter Secondyear GPA"));
		 cell18 = new PdfPCell(new Paragraph(s23));
		 cell19 = new PdfPCell(new Paragraph("Inter CGPA"));
		 cell20 = new PdfPCell(new Paragraph(s24));
		 cell21 = new PdfPCell(new Paragraph("Inter TC No"));
		 cell22 = new PdfPCell(new Paragraph(s26));
		table1.addCell(cell3);
		table1.addCell(cell4);
		table1.addCell(cell5);
		table1.addCell(cell6);
		table1.addCell(cell7);
		table1.addCell(cell8);
		table1.addCell(cell9);
		table1.addCell(cell10);
		table1.addCell(cell11);
		table1.addCell(cell12);
		table1.addCell(cell13);
		table1.addCell(cell14);
		table1.addCell(cell15);
		table1.addCell(cell16);
		table1.addCell(cell17);
		table1.addCell(cell18);
		table1.addCell(cell19);
		table1.addCell(cell20);
		table1.addCell(cell21);
		table1.addCell(cell22);
		table1.setTotalWidth(280f);
		//table1.writeSelectedRows(0, -1, 300, 740, writer.getDirectContent());
		table1.writeSelectedRows(0, -1, 20, 500, writer.getDirectContent());
		
		table1 = new PdfPTable(2);
		c = new PdfPCell(new Paragraph("Student EAMCET Details",catFont));
		c.setColspan(2);
		c.setHorizontalAlignment(Element.ALIGN_CENTER);
		c.setBackgroundColor(BaseColor.GREEN);
		table1.addCell(c);
		cell3 = new PdfPCell(new Paragraph("Admission Type"));
		 cell4 = new PdfPCell(new Paragraph(s27));
		 cell5 = new PdfPCell(new Paragraph("EAMCET Hallticketno"));
		 cell6 = new PdfPCell(new Paragraph(s28));
		 cell7 = new PdfPCell(new Paragraph("EAMCET Rank"));
		 cell8 = new PdfPCell(new Paragraph(s29));
		 cell9 = new PdfPCell(new Paragraph("Local Area"));
		 cell10 = new PdfPCell(new Paragraph(s30));
		 cell11 = new PdfPCell(new Paragraph("Religion"));
		 cell12 = new PdfPCell(new Paragraph(s31));
		 cell13 = new PdfPCell(new Paragraph("Caste"));
		 cell14 = new PdfPCell(new Paragraph(s32));
		 cell15 = new PdfPCell(new Paragraph("Subcaste"));
		 cell16 = new PdfPCell(new Paragraph(s33));
		 cell17 = new PdfPCell(new Paragraph("Fee"));
		 cell18 = new PdfPCell(new Paragraph(s34));
		 cell19 = new PdfPCell(new Paragraph("Nationality"));
		 cell20 = new PdfPCell(new Paragraph(s35));
		 
		table1.addCell(cell3);
		table1.addCell(cell4);
		table1.addCell(cell5);
		table1.addCell(cell6);
		table1.addCell(cell7);
		table1.addCell(cell8);
		table1.addCell(cell9);
		table1.addCell(cell10);
		table1.addCell(cell11);
		table1.addCell(cell12);
		table1.addCell(cell13);
		table1.addCell(cell14);
		table1.addCell(cell15);
		table1.addCell(cell16);
		table1.addCell(cell17);
		table1.addCell(cell18);
		table1.addCell(cell19);
		table1.addCell(cell20);
		table1.setTotalWidth(280f);
		//table1.writeSelectedRows(0, -1, 10, 500, writer.getDirectContent());
		table1.writeSelectedRows(0, -1, 20, 300, writer.getDirectContent());
		
		table1 = new PdfPTable(2);
		c = new PdfPCell(new Paragraph("Student AADHAR Details",catFont));
		c.setColspan(2);
		c.setHorizontalAlignment(Element.ALIGN_CENTER);
		c.setBackgroundColor(BaseColor.GREEN);
		table1.addCell(c);
		
		c = new PdfPCell(new Paragraph("Permanent Address"));
		c.setColspan(2);
		c.setHorizontalAlignment(Element.ALIGN_CENTER);
		c.setBackgroundColor(BaseColor.RED);
		table1.addCell(c);
				
		 cell3 = new PdfPCell(new Paragraph("Aadhar No"));
		 cell4 = new PdfPCell(new Paragraph(s16));
		 cell5 = new PdfPCell(new Paragraph("House No"));
		 cell6 = new PdfPCell(new Paragraph(s41));
		 cell7 = new PdfPCell(new Paragraph("Village/Street/Area"));
		 cell8 = new PdfPCell(new Paragraph(s40));
		 cell9 = new PdfPCell(new Paragraph("Mandal"));
		 cell10 = new PdfPCell(new Paragraph(s39));
		 cell11 = new PdfPCell(new Paragraph("District"));
		 cell12 = new PdfPCell(new Paragraph(s38));
		 cell13 = new PdfPCell(new Paragraph("State"));
		 cell14 = new PdfPCell(new Paragraph(s37));
		 cell13 = new PdfPCell(new Paragraph("Pincode"));
		 cell14 = new PdfPCell(new Paragraph(s42));
		 
		c = new PdfPCell(new Paragraph("Present Address"));
		c.setColspan(2);
		c.setHorizontalAlignment(Element.ALIGN_CENTER);
		c.setBackgroundColor(BaseColor.RED);
		//table1.addCell(c);
		 
		 
		 cell15 = new PdfPCell(new Paragraph("Currently Living with/in"));
		 cell16 = new PdfPCell(new Paragraph(s43));
		 cell17 = new PdfPCell(new Paragraph("Mode of Travel"));
		 cell18 = new PdfPCell(new Paragraph(s44));
		 
		 cell19 = new PdfPCell(new Paragraph("House No"));
		 cell20 = new PdfPCell(new Paragraph(s49));
		 cell21 = new PdfPCell(new Paragraph("Village/Street/Area"));
		 cell22 = new PdfPCell(new Paragraph(s48));
		 cell23 = new PdfPCell(new Paragraph("Mandal"));
		 cell24 = new PdfPCell(new Paragraph(s47));
		 cell25 = new PdfPCell(new Paragraph("District"));
		 cell26 = new PdfPCell(new Paragraph(s46));
		 PdfPCell cell27 = new PdfPCell(new Paragraph("State"));
		 PdfPCell cell28 = new PdfPCell(new Paragraph(s45));
		 PdfPCell cell29 = new PdfPCell(new Paragraph("Pincode"));
		 PdfPCell cell30 = new PdfPCell(new Paragraph(s50));
		 
		 
		table1.addCell(cell3);
		table1.addCell(cell4);
		table1.addCell(cell5);
		table1.addCell(cell6);
		table1.addCell(cell7);
		table1.addCell(cell8);
		table1.addCell(cell9);
		table1.addCell(cell10);
		table1.addCell(cell11);
		table1.addCell(cell12);
		table1.addCell(cell13);
		table1.addCell(cell14);
		table1.addCell(c);
		table1.addCell(cell15);
		table1.addCell(cell16);
		table1.addCell(cell17);
		table1.addCell(cell18);
		table1.addCell(cell19);
		table1.addCell(cell20);
		table1.addCell(cell21);
		table1.addCell(cell22);
		table1.addCell(cell23);
		table1.addCell(cell24);
		table1.addCell(cell25);
		table1.addCell(cell26); 
		table1.addCell(cell27);
		table1.addCell(cell28);
		table1.addCell(cell29);
		table1.addCell(cell30);
		
		table1.setTotalWidth(260f);
		//table1.writeSelectedRows(0, -1, 300, 530, writer.getDirectContent());
		table1.writeSelectedRows(0, -1, 320, 740, writer.getDirectContent());
		
		table1 = new PdfPTable(2);
		c = new PdfPCell(new Paragraph("Other Details",catFont));
		c.setColspan(2);
		c.setHorizontalAlignment(Element.ALIGN_CENTER);
		c.setBackgroundColor(BaseColor.GREEN);
		table1.addCell(c);
		cell3 = new PdfPCell(new Paragraph("Student Mobileno"));
		 cell4 = new PdfPCell(new Paragraph(s51));
		 cell5 = new PdfPCell(new Paragraph("Mother Mobileno"));
		 cell6 = new PdfPCell(new Paragraph(s52));
		 cell7 = new PdfPCell(new Paragraph("Father Mobileno"));
		 cell8 = new PdfPCell(new Paragraph(s53));
		 cell9 = new PdfPCell(new Paragraph("Mobileno Message"));
		 cell10 = new PdfPCell(new Paragraph(s54));
		 cell11 = new PdfPCell(new Paragraph("Mother Occupation"));
		 cell12 = new PdfPCell(new Paragraph(s55));
		 cell13 = new PdfPCell(new Paragraph("Father Occupation"));
		 cell14 = new PdfPCell(new Paragraph(s56));
		 cell15 = new PdfPCell(new Paragraph("Annual Income"));
		 cell16 = new PdfPCell(new Paragraph(s57));
		 cell17 = new PdfPCell(new Paragraph("Guardian Name"));
		 cell18 = new PdfPCell(new Paragraph(s58));
		 cell19 = new PdfPCell(new Paragraph("Guardian Mobileno"));
		 cell20 = new PdfPCell(new Paragraph(s59));
		 cell21 = new PdfPCell(new Paragraph("Parent Emailid"));
		 cell22 = new PdfPCell(new Paragraph(s60));
		 cell23 = new PdfPCell(new Paragraph("Student Emailid"));
		 cell24 = new PdfPCell(new Paragraph(s61));
		 cell25 = new PdfPCell(new Paragraph("Student Bloodgroup"));
		 cell26 = new PdfPCell(new Paragraph(s62));
		 cell27 = new PdfPCell(new Paragraph("Student Bank Accountno"));
		 cell28 = new PdfPCell(new Paragraph(s63));
		 cell29 = new PdfPCell(new Paragraph("Student Bank Name"));
		 cell30 = new PdfPCell(new Paragraph(s64));
		 PdfPCell cell31 = new PdfPCell(new Paragraph("Student Bank IFSC Code"));
		 PdfPCell cell32 = new PdfPCell(new Paragraph(s65));
		 PdfPCell cell33 = new PdfPCell(new Paragraph("Mother Tongue"));
		 PdfPCell cell34 = new PdfPCell(new Paragraph(s66));
		 PdfPCell cell35 = new PdfPCell(new Paragraph("Student Gothram"));
		 PdfPCell cell36 = new PdfPCell(new Paragraph(s67));
		 PdfPCell cell37 = new PdfPCell(new Paragraph("Student Actual Dateof Birth"));
		 PdfPCell cell38 = new PdfPCell(new Paragraph(s68));
		 
		 
		table1.addCell(cell3);
		table1.addCell(cell4);
		table1.addCell(cell5);
		table1.addCell(cell6);
		table1.addCell(cell7);
		table1.addCell(cell8);
		table1.addCell(cell9);
		table1.addCell(cell10);
		table1.addCell(cell11);
		table1.addCell(cell12);
		table1.addCell(cell13);
		table1.addCell(cell14);
		table1.addCell(cell15);
		table1.addCell(cell16);
		table1.addCell(cell17);
		table1.addCell(cell18);
		table1.addCell(cell19);
		table1.addCell(cell20);
		table1.addCell(cell21);
		table1.addCell(cell22);
		table1.addCell(cell23);
		table1.addCell(cell24);
		table1.addCell(cell25);
		table1.addCell(cell26); 
		table1.addCell(cell27);
		table1.addCell(cell28);
		table1.addCell(cell29);
		table1.addCell(cell30);
		table1.addCell(cell31);
		table1.addCell(cell32);
		table1.addCell(cell33);
		table1.addCell(cell34);
		table1.addCell(cell35);
		table1.addCell(cell36);
		table1.addCell(cell37);
		table1.addCell(cell38);
		
		table1.setTotalWidth(260f);
		table1.writeSelectedRows(0, -1, 320, 460, writer.getDirectContent());
		
		/*
		
		document.add(new Paragraph("\t\t\t\t\t\tOther Details",catFont));
		document.add(new Paragraph("1. Student Mobileno:  "+s51+"\n2. Mother Mobileno:  "+s52+"\n3. Father Mobileno:  "+s53+"\n4. Mobileno Message:  "+s54+"\n5. Mother Occupation:  "+s55+"\n6. Father Occupation:  "+s56+"\n7. Annual Income:  "+s57+"\n8. Guardian Name:  "+s58+"\n9. Guardian Mobileno:  "+s59+"\n10. Parent Emailid:  "+s60+"\n11. Student Emailid:  "+s61+"\n12. Student Bloodgroup:  "+s62+"\n13. Student Bank Accountno:  "+s63+"\n14. Student Bank Name:  "+s64+"\n15. Student Bank IFSC Code:  "+s65+"\n16. Mother Tongue:  "+s66+"\n17. Student Gothram:  "+s67+"\n18. Student Actual Dateof Birth:  "+s68));
		
		*/
		
		
		//document.add(table1); 

		/*document.add(new Paragraph("\t\t\t\t\t\tStudent SSC/CBSE Details",catFont));
		document.add(new Paragraph("1. Student Rollno :  "+s1+"\n2. Student Name :  "+s2+"\n3. Father Name :  "+s3+"\n4. Mother Name :  "+s4+"\n5. SSC Rollno :  "+s5+"\n6. SSC School Name :  "+s6+"\n7. Month SSC Passed :  "+s7+"\n8. Year SSC Passed :  "+s8+"\n9. SSC CGPA :  "+s9+"\n10. SSC Medium : "+s10+"\n11. Date of Birth :  "+s11+"\n12. Gender :  "+s12+"\n13. Identification Marks1 :  "+s13+"\n14. Identification Marks2 :  "+s14+"\n15.SSC / CBSE :"+s15));
		document.add(new Paragraph("\t\t\t\t\t\tStudent INTER/CBSE Details",catFont));
		document.add(new Paragraph("1. Inter Collge Name:  "+s16+"\n2. Inter College Place:  "+s17+"\n3. Inter Regdno:  "+s18+"\n4. Month Inter Passed:  "+s19+"\n5. Year Inter Passed:  "+s20+"\n6. Inter Medium:  "+s21+"\n7. Inter Firstyear CGPA:  "+s22+"\n8. Inter Secondyear CGPA:  "+s23+"\n9. Inter Final CGPA:  "+s24+"\n10. Inter Plustotype:  "+s25+"\n11. Inter TC No:  "+s26));
		document.add(new Paragraph("\t\t\t\t\t\tStudent EAMCET Details",catFont));
		document.add(new Paragraph("1. Admission Type:  "+s27+"\n2. EAMCET Hallticketno:  "+s28+"\n3. EAMCET Rank:  "+s29+"\n4. Local Area:  "+s30+"\n5. Religion:  "+s31+"\n6. Caste:  "+s32+"\n7. Subcaste:  "+s33+"\n8.Fee Reimbursement :  "+s34+"\n9. Nationality:  "+s35));
		document.add(new Paragraph("\n\t\t\t\t\t\tStudent AADHAR Details",catFont));
		document.add(new Paragraph("1. Aadhar No:  "+s36+"\n2. State:  "+s37+"\n3. District:  "+s38+"\n4. Mandal:  "+s39+"\n5. Village/Street/Area:  "+s40+"\n6. House No:  "+s41+"\n7. Pincode:  "+s42));
		document.add(new Paragraph("\t\t\t\t\t\tPresent Address",catFont));
		document.add(new Paragraph("1. Currently Living with/in : "+s43+"\n2. Mode of Travel:  "+s44+"\n3. State:  "+s45+"\n4. District:  "+s46+"\n5. Mandal:  "+s47+"\n6. Village/Street/Area:  "+s48+"\n7. Houseouse No:  "+s49+"\n8. Pincode:  "+s50));
		document.add(new Paragraph("\t\t\t\t\t\tOther Details",catFont));
		document.add(new Paragraph("1. Student Mobileno:  "+s51+"\n2. Mother Mobileno:  "+s52+"\n3. Father Mobileno:  "+s53+"\n4. Mobileno Message:  "+s54+"\n5. Mother Occupation:  "+s55+"\n6. Father Occupation:  "+s56+"\n7. Annual Income:  "+s57+"\n8. Guardian Name:  "+s58+"\n9. Guardian Mobileno:  "+s59+"\n10. Parent Emailid:  "+s60+"\n11. Student Emailid:  "+s61+"\n12. Student Bloodgroup:  "+s62+"\n13. Student Bank Accountno:  "+s63+"\n14. Student Bank Name:  "+s64+"\n15. Student Bank IFSC Code:  "+s65+"\n16. Mother Tongue:  "+s66+"\n17. Student Gothram:  "+s67+"\n18. Student Actual Dateof Birth:  "+s68));	*/
		document.close();   
	    }
	
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