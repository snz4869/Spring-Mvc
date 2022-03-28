<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add From Book</title>
</head>
<body>
	<h1>Book Edit From</h1>
	<c:url var="formAction" value="/todo/update"/>
	<form:form modelAttribute="todo" action="${formAction}" method="post">
		<fildset> <legend>Add a Book</legend>
		<form:hidden path="id"/>		
		<p>
			<label for="user">User:</label>
			<form:input id="user" path="user" />
		</p>
		<p>
			<label for="description">Description:</label>
			<form:input id="description" path="description" />
		</p>
		<p>
			<label for="startMeter">Star Meter</label>
			<form:input id="startMeter" path="startMeter" />
		</p>		
		<p>
			<input type="reset" id="reset" /> <input type="submit" id="submit"
				path="Edit book" />
		</p>

		</fildset>
		</form:form>
</body>
</html>