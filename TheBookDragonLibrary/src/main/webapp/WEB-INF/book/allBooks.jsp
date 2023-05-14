<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Browse</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="../navbar.jsp"/>
	<div class="container-fluid">
		<h1>The Library under the Mountain</h1>
		<h2>The BookDragon's collection is vast and continues to grow.</h2>

		<form action="getBookById.do" method="GET">
			<div class="row">
				<div class="col-sm-8">
					<label for="id">Search by ID:</label> 
					<input class="form-control" type="text" name="id" />
				</div>
				<input class="button-hover" type="submit" value="Show Book Details" />
			</div>
		</form>
		<br>
		<form action="getBookByKeyword.do" method="GET">
			<div class="row">
				<div class="col-sm-8">
					<label for="keyword">Search by keyword or phrase:</label> 
					<input class="form-control" type="text" name="keyword" />
				</div>
				<input class="button-hover" type="submit" value="Show Book Details" />
			</div>
		</form>

		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Author</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="book" items="${books}">
					<tr>
						<td>${book.id}</td>
						<td><a href="getBookById.do?id=${book.id}">${book.title}</a></td>
						<td>${book.authorFirstName} ${book.authorLastName}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>