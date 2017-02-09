<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<body>
	<h1>Books</h1>

 	<c:if test="${not empty books}">
 	<table>
 		
 		
			<c:forEach var="book" items="${books}">
				<tr>
					<td><c:out value="${book.title}" /></td>
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