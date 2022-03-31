<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>

<head>
<title>Todo Management</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="common/nav.jspf"%>
	<div class="container">
		<div>
			<a type="button" class="btn btn-primary btn-md" href='<c:url value="input"/>'>Add Todo</a>
		</div>
		<div class="panel panel-primary">	
			<div class="panel-body">

				<form:form action="search" method="post" modelAttribute="searchForm">					
					<form:input id="keyword" path="keyword" class="form-control m-2" required="required" />
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form:form>				
				
			<table class="table table-striped">
				<thead>
				<tr>
					<th>ID</th>
					<th>User</th>
					<th>Description</th>
					<th>Target Date</th>
					<th>Start Meter</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
				<tr>
					<td> ${ todo.id } </td>
					<td> ${ todo.user } </td>
					<td> ${ todo.description } </td>
					<td>
						<fmt:formatDate value="${todo.targetDatae}" pattern="dd/MM/yyyy" />
					</td>
					<td> ${ todo.startMeter } </td>
					<td>
						<a type="button" class="btn btn-success" href="edit/${todo.id}">Update</a>
						<a type="button" class="btn btn-warning" href="delete?id=${todo.id}" onclick="return confirm('Are you sure you want to delete this item?');" >Delete</a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
			</div>
		</div>	
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</div>		
</body>
</html>