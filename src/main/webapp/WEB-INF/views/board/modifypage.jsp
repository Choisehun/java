<%@page import="com.my.ch.dto.PostDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/read.css">
<title>Insert title here</title>
</head>
<body>
	<%
		PostDto read = (PostDto)request.getAttribute("read");
		String content = read.getContent();
		String title = read.getTitle();
		long no = read.getPost_num();
		String id = read.getUser_id();
		String data = read.getCreated_at();
	%>
	<form action="/board/modify" method="post">
	<table class="top-table" >
	<thead>
	<tr>
	<td><a style="font-size:24px">💪🏻 김종국갤러리 </a></td>

	</tr>
	</thead>
	</table>
	<table class="body-table" >
	
	<thead style=border-bottom:groove>
	<tr>
	<td colspan=2 style="border-bottom:groove;"><input name="title" placeholder="제목 수정" style="width:640px;border-style:none"></td>
	
	</tr>
	
	<tr>
	<td style="width:7em;border-right:groove;font-size:10px;border-bottom:groove"><%=id %></td><td style="font-size:10px;border-bottom:groove"><%=data %></td>
	</tr>
	</thead>
	
	<tbody>
	<tr>
	<td colspan=2 style="border-bottom:groove;height:270px"><input name="content" placeholder="내용 수정" style="width:640px;height:250px;border-style:none;"></td>
	</tr>
	</tbody>
	
	<tfoot>
	<tr>
	<td></td>
	
	<td class="foot-button">
	
	<input type="hidden" name="post_num" value=<%=no %>>
	<input type="submit" value="확인">

	
	
	</td>
	</tr>
	</tfoot>

	</table>
		</form>
	

</body>
</html>