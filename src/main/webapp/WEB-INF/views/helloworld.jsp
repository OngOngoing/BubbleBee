<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC -HelloWorld</title>
</head>
<body>
	<center>
		<h2>Hello Calculate</h2>
		<% String submit = request.getParameter("submit");%>
		<h2>
			${message} <% out.print(submit); %> ${name}
		</h2>
		<h1 name="result"> ${result} </h1>
		<h4><a href="../HelloWorld" name="back_link">BACK</a></h4>
	</center>
</body>
</html>