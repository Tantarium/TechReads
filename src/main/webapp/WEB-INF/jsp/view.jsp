<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<body>
	<h1>View Book</h1>
	
	<table border=1>
		<tr>
			<td><h2>Cover Image</h2></td>
			<td><h2>Title</h2></td>
			<td><h2>Author</h2></td>
			<td><h2>Rating</h2></td>
			<td><h2>Status</h2></td>
			<td><h2>Date</h2></td>
		</tr>
		<tr>
			<td><img src="${book.coverURL}" height="42" width="42" /></td>
			<td>${book.title}</td>
			<td>${book.author}</td>
			<td>${book.rating}</td>
			<td>${book.status}</td>
			<td>${book.date}</td>
		</tr>
	
	
	</table>
	
	
	<a href=/Techreads/books><button>Return</button></a>


</body>
</html>