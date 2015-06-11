<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>
      <form action="hello">
        enter first number <input name="num1" type="text"/>
  		<select name="operator">
      		<option value="+"> + </option>
      		<option value="-"> - </option>
      		<option value="*"> * </option>
      		<option value="/"> / </option>
  		</select>
  		enter second number <input name="num2" type="text"/>
  		<button type="submit"> Calculate </button>
     </form>
</body>
</html>