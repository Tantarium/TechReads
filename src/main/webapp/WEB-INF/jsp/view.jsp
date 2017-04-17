<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
	<h1>View Book</h1>
	
			<div class="CoverURL col-xs-2"><h2>Cover Image</h2></div>
			<div class="Title col-xs-2"><h2>Title</h2></div>
			<div class="Author col-xs-2"><h2>Author</h2></div>
			<div class="Rating col-xs-2"><h2>Rating</h2></div>
			<div class="Status col-xs-2"><h2>Status</h2></div>
			<div class="Date col-xs-2"><h2>Date</h2></div>

			<div class="CoverURL col-xs-2"><img src="${book.coverURL}" height="42" width="42" /></div>
			<div class="Title col-xs-2">${book.title}</div>
			<div class="Author col-xs-2">${book.author}</div>
			<div class="Rating col-xs-2">${book.rating}</div>
			<div class="Status col-xs-2">${book.status}</div>
			<div class="Date col-xs-2">${book.date}</div>

	
	<div class="col-xs-12"> </div>
	<div class="col-xs-1 btn btn-default"><a href="/Techreads/books">Return</a></div>
	<div class="col-xs-12"> </div>
	<div class="col-xs-1 btn btn-default"><a href="/Techreads/books/edit/${book.id}">Edit</a></div>


</body>
</html>