<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
	<div class="col-xs-12"><h1>Add Book</h1></div>

	<form:form method="post" modelAttribute="bookForm" action="/Techreads/books">

		<div class="CoverURL col-xs-1">Cover Image</div>
		<div class="CoverURL col-xs-2"><form:input path="coverURL" type="text" /></div>
		
		<div class="Title col-xs-1">Title</div>
		<div class="Title col-xs-2"><form:input path="title" type="text" /></div>
		
		<div class="Author col-xs-1">Author</div>
		<div class="Author col-xs-2"><form:input path="author" type="text" /></div>
		
		<div class="Rating col-xs-1">Rating</div>
		<div class="Rating col-xs-2"><form:input path="rating" type="text" /></div>
		
		<div class="Status col-xs-1">Status</div>
		<div class="Status col-xs-2"><form:input path="status" type="text" /></div>
		
		<div class="Date col-xs-1">Date</div>
		<div class="Date col-xs-2"><form:input path="date" type="text" /></div>
		
		<div class="col-xs-12"> </div>
		<div class="col-xs-1 btn btn-default">Add</div>
 	</form:form>

	<div class="col-xs-1 btn btn-default"><a href=/Techreads/books>Cancel</a></div>

</body>
</html>