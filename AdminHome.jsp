
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
  width: 300px;
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
<div class="wrapper1">
<br>
<center>
<p align='center' style="font-size:20px;">Admin Page</p>
<button class="button" onClick="window.location.href='ReportPanel.jsp'"><span>Registered Students Report</span></button><br>
<button class="button" onClick="window.location.href='UnReport.jsp'"><span>UnRegistered Students Report</span></button><br>
<button class="button" onClick="window.location.href='edithome.jsp'"><span>Edit Student Profile</span></button><br>
<button class="button" onClick="window.location.href='PdfGen.jsp'"><span>Generate All Students PDFs</span></button><br>
<button class="button" onClick="window.location.href='IndPdfGenHome.jsp'"><span>Generate Individual Student PDF</span></button><br>
</center>
</div>
</body>
</html>
