<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<script src="/webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="/webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
    
    <script>  
        $(function() {  
            $( "#targetDatae" ).datepicker();  
            format: 'dd/mm/yyyy'
        });  
    </script>  

<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css"> 
<meta charset="ISO-8859-1">
<title>Edit From Todo</title>
</head>
<body>
	<%@ include file="common/nav.jspf"%>
	<div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 ">
                <div class="panel panel-primary">
                    <div class="panel-heading">Edit TODO</div>
                    <div class="panel-body">
						<c:url var="formAction" value="/update"/>
						<form:form modelAttribute="todo" action="${formAction}" method="post">							
							<form:hidden path="id"/>		

							<fieldset class="form-group">	
								<form:label path="user">User</form:label>
								<form:input id="user" path="user" class="form-control" required="required" />
								<form:errors path="user" cssClass="text-warning" />
							</fieldset>

							<fieldset class="form-group">
                                <form:label path="description">Description</form:label>
								<form:input id="description" path="description" class="form-control" required="required" />
								<form:errors path="description" cssClass="text-warning" />
							</fieldset>

							<fieldset class="form-group">
                                <form:label path="targetDatae">Target Date</form:label>
								<form:input path="targetDatae" type="text" class="form-control" placeholder="dd/mm/yyyy" />
								<form:errors path="targetDatae" cssClass="text-warning" />
							</fieldset>

							<fieldset class="form-group">
                                <form:label path="startMeter">star Meter</form:label>
								<form:input id="startMeter" type="number" path="startMeter" class="form-control" />
							</fieldset>
														
								<input type="reset" id="reset" value="Reset" class="btn btn-warning" />                                 
                                <button type="submit" class="btn btn-success">Save</button>                                                           

							</fildset>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>