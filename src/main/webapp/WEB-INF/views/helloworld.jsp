<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC -HelloWorld</title>
</head>
<body>
	<center>
		<h2>Hello World</h2>
		<h2>
			<%
				double num1 = Double.parseDouble(request.getParameter("num1"));
				double num2 = Double.parseDouble(request.getParameter("num2"));
				String op = request.getParameter("operator");
				
				double ans=0;
				out.print(num1+" ");
				out.print(op+" ");
				out.println(num2);
				
				if(op.equals("+")) {
					ans = num1+num2;
				}
				else if(op.equals("-")) {
					ans = num1 - num2;
				}
				else if(op.equals("*")) {
					ans = num1 * num2;
				}
				else if(op.equals("/")) {
					ans = num1/num2;
				}
				out.print("= ");
			%>
			<span id ="ans"><%=ans%></span>
			<div><a href="">Back</a></div>
			
		</h2>
	</center>
</body>
</html>