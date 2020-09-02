<%
	String s1 = request.getParameter("name");
	String s2 = request.getParameter("email");
	String s3 = request.getParameter("number");
	String s4 = request.getParameter("gender");
	out.println(s1);
	out.println(s2);
	out.println(s3);
	out.println(s4);
%>