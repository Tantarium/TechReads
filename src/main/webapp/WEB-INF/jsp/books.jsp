<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<h1>Books</h1>

 	<c:if test="${not empty books}">
 		
 		<div class="CoverURL col-xs-2"><h4>Cover Image</h4></div>
 		<div class="Title col-xs-2"><h4>Title</h4></div>
 		<div class="Author col-xs-2"><h4>Author</h4></div>
 		<div class="Rating col-xs-1"><h4>Rating</h4></div>
 		<div class="Status col-xs-2"><h4>Status</h4></div>
 		<div class="Date col-xs-1"><h4>Date</h4></div>
 		<div class="View col-xs-1"><h4>View</h4></div>
 		<div class="Delete col-xs-1"><h4>Delete?</h4></div>
 		

			<c:forEach var="book" items="${books}">

			<div class="CoverURL col-xs-2"><img src="${book.coverURL}" height="42" width="42" /></div>
			<div class="Title col-xs-2"><c:out value="${book.title}" /></div>
			<div class="Author col-xs-2"><c:out value="${book.author}" /></div>
			<div class="Rating col-xs-1"><c:out value="${book.rating}" /></div>
			<div class="Status col-xs-2"><c:out value="${book.status}" /></div>
			<div class="Date col-xs-1"><c:out value="${book.date}" /></div>
			<div class="View col-xs-1">
				<c:url var="viewUrl" value="/view/${book.id}" />
				<form action="books/view/${book.id}">
						<input class="btn btn-info" type="submit" value="View Book" />
				</form>
			</div>
			<div class="Delete col-xs-1">
				<c:url var="deleteUrl" value="/books/delete" />
						<form id="${bookFormId}" action="${deleteUrl}" method="POST">
							<input id="book" name="book" type="hidden" value="${book.id}" />
							<input class="btn btn-danger" type="submit" value="delete"
								onClick="return confirm('Are you sure you want to delete this book?')" />
						</form>
					</div>
			<div class="col-sm-12"></div>
			</c:forEach>
			
		
	</c:if>
	<div class="col-sm-5"></div>
	<a href=/Techreads/books/add><div class="Add col-sm-1 btn btn-success">Add</div></a>
	<div class="col-sm-6"></div>


</body>
</html>