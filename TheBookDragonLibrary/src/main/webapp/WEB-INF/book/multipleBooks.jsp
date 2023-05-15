<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container-fluid">
	<c:choose>
		<c:when test="${not empty books}">
			<div class="row text-center">
				<h1>Books Found from your Query</h1>
			</div>
			<c:forEach var="book" items="${books}">
			<div class="row">
				<div class="col-4">
					<c:choose>
						<c:when test="${not empty book.bookCover}">
							<img id="bookCover" src="${book.bookCover}"
								alt="${book.title} book cover"/>
						</c:when>
						<c:otherwise>
							A cover image was not provided.
						</c:otherwise>
					</c:choose>
					<br><br>
				</div>
				<div class="col">
					<h3>${book.title} ( ID: ${book.id} )</h3>
					<h4>Authored by ${book.authorFirstName} ${book.authorLastName}</h4>
					<h5>${book.medium} | ${book.numberOfPages} pages</h5>
					<h5>Published in ${book.publishYear} by ${book.publisher}</h5>
					<c:if test="${book.series ne 'N/A'}">
						<h5>Series: ${book.series} | Book #${book.occurrenceInSeries}</h5>
					</c:if>
					<blockquote>${book.synopsis}</blockquote>
					<br>
					<div class="row">
						<div class="col-sm-auto">
							<form action="changeBook.do" method=POST>
								<input type="submit" value="Change Elements of ${book.title}"/>
								<input type="hidden" name="id" value="${book.id }"/>
							</form>
						</div>
						<div class="col-sm-auto">
							<form action="deleteBook.do" method=POST>
								<input type="submit" value="Pilfer ${book.title}"/>
								<input type="hidden" name="id" value="${book.id }"/>
							</form>
						</div>
					</div>
				</div>
				<br>
				<hr>
				</div>
				</c:forEach>
		</c:when>
		
		<c:otherwise>
			<div class="row text-center">
				<h3>The BookDragon does not know of the book you seek.</h3>
			</div>
		</c:otherwise>
	</c:choose>
</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>