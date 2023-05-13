<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container">
	<c:choose>
		<c:when test="${not empty books}">
			<h1>Book Details</h1>
			<div>
				<c:forEach var="book" items="${books}">
					<h4>${book.title}</h4>
					<h5>${book.authorFirstName} ${book.authorLastName}</h5>
					<h5>${book.publishYear}</h5>
					<blockquote>${book.synopsis}</blockquote>
				</c:forEach>
			</div>
		</c:when>
		
		<c:otherwise>
			<h3>Book not found.</h3>
		</c:otherwise>
	</c:choose>
</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>