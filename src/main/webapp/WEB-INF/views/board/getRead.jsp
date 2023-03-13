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
	<td colspan=2 style="border-bottom:groove;"><%=title %></td>
	</tr>
	
	<tr>
	<td style="width:7em;border-right:groove;font-size:10px;border-bottom:groove"><%=id %></td><td style="font-size:10px;border-bottom:groove"><%=data %></td>
	</tr>
	</thead>
	
	<tbody>
	<tr>
	<td colspan=2 style="border-bottom:groove;height:270px"><%=content %></td>
	</tr>
	</tbody>
	
	<tfoot>
	<tr>
	<td></td>
	
	<td class="foot-button">
	<form action="/board/modifypage" method="get">
	<input type="hidden" name="post_num" value=<%=no %>>
	<input type="submit" value="수정">
	</form>
	
	<form action="/board/getDelete" method="get">
	<input type="hidden" name="post_num" value=<%=no %>>
	<input type="submit" value="삭제">
	</form>
	
	</td>
	</tr>
	</tfoot>

	</table>
	

</body>
</html>