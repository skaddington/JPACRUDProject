<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp"/>
	<div class="container-fluid">
		<div class="row text-center">
			<h1>Welcome to The Book Dragon Library</h1>
		</div>
		<div class="row">
			<div class="col align-self-center align-items-center">
			<img class="readingDragon" 
				src="https://ae01.alicdn.com/kf/H7697d49b8bdd46e7944ce97da7d0b95bz/1993-Dragon-Reading-in-Library-Lithograph-Wall-Sticker-Silk-Poster-Art-Light-Canvas-Home-Decoration.jpg_Q90.jpg_.webp"
				alt="dragon reading a book" 
				height=600
				width=400>
			</div>
			<div class="col align-self-center align-items-center">
				<h2>Rules of the Library:</h2>
				<h3>Set forth by the BookDragon</h3>
				<hr>
				<h3>Respect all books in her domain,</h3>
				<h3>Repair or Replace what you maim,</h3>
				<h3>Do not thieve for she will reclaim,</h3>
				<h3>Or it is you she will enflame.</h3>
			</div>
		</div>
	</div>
<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>