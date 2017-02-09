<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<body>
	<h1>Add Book</h1>

	<form:form method="post" modelAttribute="bookForm" action="/Techreads/books">
	
		<li>
			Title
			<form:input path="title" type="text" /></li>
		<li>
			Author
			<form:input path="author" type="text" /></li>
 		<li><button>Add</button></li>
 	</form:form>

	<a href=/Techreads/books><button>Cancel</button></a>

</body>
</html>