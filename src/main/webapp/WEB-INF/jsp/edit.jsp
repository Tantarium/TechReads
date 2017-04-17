<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
	<h1>Edit Book</h1>
	
	<form:form method="post" modelAttribute="bookForm" action="/Techreads/books">
	
		<div class="form-group">
			Title: <form:input path="title" type="text" placeholder="title" autofocus="autofocus" />
		</div>
		
		<div class="form-group">
			Cover URL: <form:input path="coverURL" type="text" placeholder="coverURL" autofocus="autofocus" />
		</div>
		
		<div class="form-group">
			Author: <form:input path="author" type="text" placeholder="author" autofocus="autofocus" />
		</div>
		
		<div class="form-group">
			Rating: <form:input path="rating" type="text" placeholder="rating" autofocus="autofocus" />
		</div>
		
		<div class="form-group">
			Status: <form:input path="status" type="text" placeholder="status" autofocus="autofocus" />
		</div>
		
		<div class="form-group">
			Date: <form:input path="date" type="text" placeholder="date" autofocus="autofocus" />
		</div>
		
		<div class="form-group">
			<button type="submit">Save Changes</button>
		</div>
		
		<form:input path="id" type="hidden" />
		
	</form:form>
	

	
	
	<a href=/Techreads/books><button>Return</button></a>


</body>
</html>