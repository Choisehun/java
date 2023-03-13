<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- ({userid},{title},{content},{now()},{views},{category}); -->

		<form action="/board/write" method="post">
		<input name="userid">
		<input name="title">
		<input name="content">
		
		<input type="radio" name=category value="1">게시판1
		<input type="radio" name=category value="2">게시판2
		<input type="radio" name=category value="3">게시판3
		
		<input type="submit" value="확인">
		</form>


</body>
</html>