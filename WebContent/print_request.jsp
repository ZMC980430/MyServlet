<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Print HTTP Request</title>
<style>
th, td{border:1px solid black;}

</style>
</head>
<body>
	<table>
		<tr>
			<th>Names</th>
			<th>Parameters</th>
		</tr>
		<%
		Enumeration<String> ParameterNames = request.getParameterNames(); 
		String Name = null;
		String Parameter = null;
		while(ParameterNames.hasMoreElements()){
			Name = (String)ParameterNames.nextElement();
			Parameter = request.getParameter(Name);
			%>
			<tr>
			<th><%=Name %></th>
			<th><%=Parameter %></th>
			</tr>
			<%
			}
		%>
	</table>
	<table>
		<tr>
			<th>HeaderNames</th>
			<th>Headers</th>
		</tr>
		<%
		Enumeration<String> HeaderNames = request.getHeaderNames(); 
		while(HeaderNames.hasMoreElements()){
			Name = (String)HeaderNames.nextElement();
			Parameter = request.getHeader(Name);
			%>
			<tr>
			<th><%=Name %></th>
			<th><%=Parameter %></th>
			</tr>
			<%
			}
		%>
	</table>
</body>
</html>