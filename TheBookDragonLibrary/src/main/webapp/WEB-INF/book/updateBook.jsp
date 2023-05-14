<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Elements</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="../navbar.jsp"/>
	<div class="container-fluid">
		<h1>Welcome to the Hall of Changing</h1>
		<h3>Be wary of your actions or you will answer to the BookDragon herself.</h3>
		
		<form action="updateBook.do" method="POST">
		    <label for="title">Title: </label>
			<input type="text" name="title" value="${book.title}"/> 
			<br>
		    <label for="authorFirstName">Author First Name (include MI if applicable): </label>
			<input type="text" name="authorFirstName" value="${book.authorFirstName}"/> 
		    <label for="authorLastName">Author Last Name: </label>
			<input type="text" name="authorLastName" value="${book.authorLastName}"/> 
			<br>
		    <label for="publishYear">Publish Year: </label>
			<input type="text" name="publishYear" value="${book.publishYear}"/> 
		    <label for="publisher">Publisher: </label>
			<input type="text" name="publisher" value="${book.publisher}"/> 
			<br>
		    <label for="series">Series (N/A if not part of a series): </label>
			<input type="text" name="series" value="${book.series}"/> 
		    <label for="occurrenceInSeries">Occurrence in Series (0 if not part of a series): </label>
			<input type="text" name="occurrenceInSeries" value="${book.occurrenceInSeries}"/> 
			<br>
		    <label for="medium">Medium: </label>
				<input type="radio" id="Hardback" name="medium" value="Hardback" required>
				<label for="Hardback"> Hardback</label>
				<input type="radio" id="Paperback" name="medium" value="Paperback">
				<label for="Paperback"> Paperback</label>
			<br>
		    <label for="numberOfPages">Number of Pages: </label>
			<input type="text" name="numberOfPages" value="${book.numberOfPages}"/> 
			<br>
		    <label for="synopsis">Synopsis: </label>
			<input type="text" name="synopsis" value="${book.synopsis}"/> 
			<br>
		    <label for="bookCover">Book Cover Image: </label>
			<input type="text" name="bookCover" value="${book.bookCover}"/> 
			<br>
			<br><br>
			<input type="submit" value="Submit Book Details" />
			<input type="hidden" name="id" value="${book.id}"/>
		</form>
		
		<script>
			radiobutton = ${book.medium};
			radiobutton.checked = true;
		</script>

	</div>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>