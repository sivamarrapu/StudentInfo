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
	</div>
 <div>
    <form action="Check1.jsp" method="POST">
	<table style="position:absolute;top:300px;left:400px;width:400px;">
	   	<tr><td>Enter Roll No:<td><input type="text" required placeholder="Enter Roll No" id="t1" name="t1"></tr>
		</table>
		<p style="position:absolute;top:350px;left:600px;"><input type="submit" value="Submit"></p>
		</form>
<p style="position:absolute;top:400px;left:580px;"><a href="AdminHome.jsp">Admin Home</a></p>
</div>

</body>
</html>
