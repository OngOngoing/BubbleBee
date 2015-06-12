<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>
 
	<center>
		<h2>Hello Calculate</h2>
		<form action="hello" method="get">
			First Integer : <input type="text" name="fint"><BR>
			Second Integer : <input type="text" name="sint"><BR>
			<input type="submit" name="submit" value="Plus">
			<input type="submit" name="submit" value="Minus">
			<input type="submit" name="submit" value="Multiply">
			<input type="submit" name="submit" value="Divide">	
		</form>
	
		<!-- <h3><a href="hello?name=Plus Operation">+</a></h3> -->
	
	</center>
</body>
</html>