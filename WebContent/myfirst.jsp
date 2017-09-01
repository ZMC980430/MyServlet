<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My First Jsp</title>
<style>
p{text-align:center;}
h1{
	text-align:center;
	color:red;
}
a:link{
	color:green;
}
a:visited{
	color:#122FFF;
}
a:hover{color:blue;}
</style>
</head>
<body>
	<h1>Hello World!!!</h1>
	<p>
		<a href="/MyServlet/second">to My Servlet</a>
	</p>
	<form action="second" method="post" >
		Input something please(post):<input type="text" name="post_sth">
		<input type="submit" value="Submit">
	</form>
	<form action="second" method="get">
		Input something please(get):<input type="text" name="get_sth">
		<input type="submit" value="Submit">
	</form>
	<%out.println("aaaa");%>
	
</body>
</html>