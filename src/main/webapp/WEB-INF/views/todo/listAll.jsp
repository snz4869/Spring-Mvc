<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<table>
	<tr>
		<th>Number</th>
		<th>User</th>
		<th>Description</th>
		<th>Target Date</th>
		<th>Start Meter</th>
		<th>&nbsp</th>
	</tr>
	<c:forEach items="${todos}" var="todo">
	<tr>
		<td> ${ todo.id } </td>
		<td> ${ todo.user } </td>
		<td> ${ todo.description } </td>
		<td> ${ todo.targetDatae } </td>
		<td> ${ todo.startMeter } </td>
		<td> &nbsp;</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>