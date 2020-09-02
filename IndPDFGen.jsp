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
		Font catFont = new Font(Font.FontFamily.TIMES_ROMAN, 18,Font.BOLD,BaseColor.BLUE);
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
		String s59="",s60="",s61="",s62="",s63="",s64="";
			
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
		String fileName=s1+".pdf";
		document=new Document(new Rectangle(600,830));
		//document.setBorder(new DashedBorder(Color.DARK_GRAY, 3));
		PdfWriter.getInstance(document, response.getOutputStream());
		Image image1 = Image.getInstance("http://localhost:9000/StuData/photos/"+str+".JPG");
		image1.setAbsolutePosition(400f, 700f);
		image1.scaleAbsolute(100, 100); 
		document.open();
		out.println("<center>");
		document.add(image1);
		
		PdfPTable table = new PdfPTable(2);
		table.setHorizontalAlignment(Element.ALIGN_LEFT);
		table.setWidthPercentage(50);
		PdfPCell cell1 = new PdfPCell(new Paragraph("Student Roll No"));
		PdfPCell cell2 = new PdfPCell(new Paragraph(s1));
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
		
		//cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
		//cell1.setColspan(2);
		table.addCell(cell1);
		table.addCell(cell2);
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
		
		PdfPTable table1 = new PdfPTable(2);
		
		table1.setSpacingAfter(10f);
		 cell1 = new PdfPCell(new Paragraph("Student Roll No"));
		 cell2 = new PdfPCell(new Paragraph(s1));
		 cell3 = new PdfPCell(new Paragraph("Student Name"));
		cell4 = new PdfPCell(new Paragraph(s2));
		table1.addCell(cell1);
		table1.addCell(cell2);
		table1.addCell(cell3);
		table1.addCell(cell4);
		document.add(table); 	
				document.add(table1); 	
		/*document.add(new Paragraph("\t\t\t\t\t\tStudent SSC/CBSE Details",catFont));
		document.add(new Paragraph("1. Student Rollno :  "+s1+"\n2. Student Name :  "+s2+"\n3. Father Name :  "+s3+"\n4. Mother Name :  "+s4+"\n5. SSC Rollno :  "+s5+"\n6. SSC School Name :  "+s6+"\n7. Month SSC Passed :  "+s7+"\n8. Year SSC Passed :  "+s8+"\n9. SSC CGPA :  "+s9+"\n10. SSC Medium : "+s10+"\n11. Date of Birth :  "+s11+"\n12. Gender :  "+s12+"\n13. Identification Marks1 :  "+s13+"\n14. Identification Marks2 :  "+s14));
		document.add(new Paragraph("\t\t\t\t\t\tStudent INTER/CBSE Details",catFont));
		document.add(new Paragraph("1. Inter Collge Name:  "+s15+"\n2. Inter College Place:  "+s16+"\n3. Inter Regdno:  "+s17+"\n4. Month Inter Passed:  "+s18+"\n5. Year Inter Passed:  "+s19+"\n6. Inter Medium:  "+s20+"\n7. Inter Firstyear CGPA:  "+s21+"\n8. Inter Secondyear CGPA:  "+s22+"\n9. Inter Final CGPA:  "+s23+"\n10. Inter Plustotype:  "+s24));
		document.add(new Paragraph("\t\t\t\t\t\tStudent EAMCET Details",catFont));
		document.add(new Paragraph("1. Admission Type:  "+s25+"\n2. EAMCET Hallticketno:  "+s26+"\n3. EAMCET Rank:  "+s27+"\n4. Local Area:  "+s28+"\n5. Religion:  "+s29+"\n6. Caste:  "+s30+"\n7. Subcaste:  "+s31));
		document.add(new Paragraph("\n\n\n\t\t\t\t\t\tStudent AADHAR Details",catFont));
		document.add(new Paragraph("1. Aadhar No:  "+s32+"\n2. State:  "+s33+"\n3. District:  "+s34+"\n4. Mandal:  "+s35+"\n5. Village/Street/Area:  "+s36+"\n6. House No:  "+s37+"\n7. Pincode:  "+s38));
		document.add(new Paragraph("\t\t\t\t\t\tPresent Address",catFont));
		document.add(new Paragraph("1. Currently Living with/in : "+s39+"\n2. Mode of Travel:  "+s40+"\n3. State:  "+s41+"\n4. District:  "+s42+"\n5. Mandal:  "+s43+"\n6. Village/Street/Area:  "+s44+"\n7. Houseouse No:  "+s45+"\n8. Pincode:  "+s46));
		document.add(new Paragraph("\t\t\t\t\t\tOther Details",catFont));
		document.add(new Paragraph("1. Student Mobileno:  "+s47+"\n2. Mother Mobileno:  "+s48+"\n3. Father Mobileno:  "+s49+"\n4. Mobileno Message:  "+s50+"\n5. Mother Occupation:  "+s51+"\n6. Father Occupation:  "+s52+"\n7. Annual Income:  "+s53+"\n8. Mother Aadharno:  "+s54+"\n9. Father Aadharno:  "+s55+"\n10. Guardian Name:  "+s56+"\n11. Guardian Mobileno:  "+s57+"\n12. Parent Emailid:  "+s58+"\n13. Student Emailid:  "+s59+"\n14. Student Bloodgroup:  "+s60+"\n15. Student Bank Accountno:  "+s61+"\n16. Student Bank Name:  "+s62+"\n17. Student Bank IFSC Code:  "+s63+"\n18. Student Gothram:  "+s64));	
		*/
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