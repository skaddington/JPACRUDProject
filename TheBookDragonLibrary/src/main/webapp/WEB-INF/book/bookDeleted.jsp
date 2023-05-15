<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pilfering</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
	<div class="container-fluid">
		<div class="row text-center align-self-center align-items-center">
		<c:choose>
			<c:when test="${wasBookReallyDeleted ne true}">
				<h2>You are a very lucky soul...</h2>
				<h3>${book.title} was not pilfered successfully.</h3>
			</c:when>
			
			<c:otherwise>
				<h2>The BookDragon does not take kindly to thieves...</h2>
				<h6>...you may want to start running.</h6>
			</c:otherwise>
		</c:choose>
		</div>
	</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>