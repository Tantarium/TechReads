<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<body>
	<h1>Books</h1>

 	<c:if test="${not empty books}">
 	<table border="1">
 		
 		<tr>
 			<td><h2>Cover Image</h2></td>
 			<td><h2>Title</h2></td>
 			<td><h2>Author</h2></td>
 			<td><h2>Rating</h2></td>
 			<td><h2>Status</h2></td>
 			<td><h2>Date</h2></td>
 			<td><h2>View</h2></td>
 			<td><h2>Delete?</h2></td>
 		</tr>
			<c:forEach var="book" items="${books}">
				<tr>
					<td><img src="${book.coverURL}" height="42" width="42" /></td>
					<td><c:out value="${book.title}" /></td>
					<td><c:out value="${book.author}" /></td>
					<td><c:out value="${book.rating}" /></td>
					<td><c:out value="${book.status}" /></td>
					<td><c:out value="${book.date}" /></td>
					<td><c:url var="viewUrl" value="/view/${book.id}" />
						<a href="books/view/${book.id}">View Book</a></td>
					<td><c:url var="deleteUrl" value="/books/delete" />
						<form id="${bookFormId}" action="${deleteUrl}" method="POST">
							<input id="book" name="book" type="hidden" value="${book.id}" />
							<input type="submit" value="delete"
								onClick="return confirm('Are you sure you want to delete this book?')" />
						</form>
					</td>
				</tr>
			</c:forEach>
			
		
	</table>
	</c:if>
	
	<a href=/Techreads/books/add><button>Add</button></a>


</body>
</html>