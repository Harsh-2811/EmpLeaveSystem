<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Processing</title>
</head>
<body>

<%
	String admin="";
	String Pass="";
	admin=request.getParameter("AdminName");
	Pass=request.getParameter("AdminPass");
	if(admin.equalsIgnoreCase("Admin") && Pass.equalsIgnoreCase("Admin"))
	{
		
		session.setAttribute("AdminId", "youremail");
		
		response.sendRedirect("AdminPanel.jsp");
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>
</body>
</html>
