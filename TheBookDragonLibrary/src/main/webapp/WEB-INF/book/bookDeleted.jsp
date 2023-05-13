<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Deleted</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container">
	<c:choose>
		<c:when test="${not empty book}">
			<h1>Book Details</h1>
			<div>
				<h4>${book.title}</h4>
				<h5>${book.authorFirstName} ${book.authorLastName}</h5>
				<h5>${book.publishYear}</h5>
				<blockquote>${book.synopsis}</blockquote>
			</div>
		</c:when>
		
		<c:otherwise>
			<h3>Book Deleted.</h3>
		</c:otherwise>
	</c:choose>
</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>