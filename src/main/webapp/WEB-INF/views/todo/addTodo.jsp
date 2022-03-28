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
	<h1>Book Add From</h1>
	<form:form action="save" method="post" modelAttribute="todo">
		<fildset> <legend>Add a Todo</legend>		
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
            
            <p id="id">
                <input type="reset" id="reset" value="Reset" /> <input type="submit" id="submit" value="Submit"
                    path="Add book" />
            </p>
		</fildset>
		</form:form>
</body>
</html>