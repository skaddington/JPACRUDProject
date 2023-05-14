<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
	<div class="container-fluid">
		<h1>Welcome to the Room of Tribute</h1>
		<h2>The BookDragon looks forward to delving into your addition to her library.</h2>
		
		<h3>Enter your book's elements:</h3>
		<form action="addBook.do" method="POST">
		    <label for="title">Title: </label>
			<input type="text" name="title" required/> 
			<br>
		    <label for="authorFirstName">Author First Name (include MI if applicable): </label>
			<input type="text" name="authorFirstName" required/> 
		    <label for="authorLastName">Author Last Name: </label>
			<input type="text" name="authorLastName" required/> 
			<br>
		    <label for="publishYear">Publish Year: </label>
			<input type="text" name="publishYear"required/> 
		    <label for="publisher">Publisher: </label>
			<input type="text" name="publisher"required/> 
			<br>
		    <label for="series">Series (N/A if not part of a series): </label>
			<input type="text" name="series" required/> 
		    <label for="occurrenceInSeries">Occurrence in Series (0 if not part of a series): </label>
			<input type="text" name="occurrenceInSeries" required/> 
			<br>
		    <label for="medium">Medium: </label>
				<input type="radio" id="hardback" name="medium" value="Hardback" required>
				<label for="hardback"> Hardback</label>
				<input type="radio" id="paperback" name="medium" value="Paperback">
				<label for="paperback"> Paperback</label>
			<br>
		    <label for="numberOfPages">Number of Pages: </label>
			<input type="text" name="numberOfPages" required/> 
			<br>
		    <label for="synopsis">Synopsis: </label>
			<input type="text" name="synopsis" required/> 
			<br>
		    <label for="bookCover">Book Cover Image: </label>
			<input type="text" name="bookCover"/> 
			<br>
			<br><br>
			<input type="submit" value="Submit Book Elements" />
		</form>
	</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>	
</body>
</html>