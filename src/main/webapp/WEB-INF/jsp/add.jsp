<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<body>
	<h1>Add Book</h1>

	<form:form method="post" modelAttribute="bookForm" action="/Techreads/books">
		<form:input path="title" type="text" />
 			<button type="submit">Add</button>
 		</form:form>

</body>
</html>