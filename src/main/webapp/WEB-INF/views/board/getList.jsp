<%@page import="com.my.ch.dto.PostDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<!-- ({userid},{title},{content},{now()},{views},{category}); -->
<% 	Object o = request.getAttribute("list");
    List<PostDto> list = (List<PostDto>)o;

%>
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <table class="table table-list-search">
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>아이디</th>
                    <th>시간</th>
                    <th>조회수</th>
                </tr>
                </thead>
                <%
                    for(int i=0; i<list.size(); i++){
                        Long no = list.get(i).getPost_num();
                        String userid = list.get(i).getUser_id();
                        String title  = list.get(i).getTitle();
                        String content = list.get(i).getContent();
                        String data = list.get(i).getCreated_at();
                        Long view = list.get(i).getViews();

                %>
                <tr>
                    <td><%=no %></td>
                    <td>
                        <a href="javascript:void(0)" onclick="window.open('getRead?post_num=<%=no%>', 'popup', 'width=800,height=600, top=50%, left=50%, margin-top=-300px, margin-left=-400px')"> <%=title %> </a>
                    </td>
                    <td><%=userid %></td>
                    <td><%=data %></td>
                    <td><%=view %></td>
                </tr>

                <%
                    }
                %>
                <tfoot>
                <tr>
                    <td>
                        <div>
                            <form>
                                <input name="search" placeholder="검색" style="200px">
                                <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                            </form>
                        </div>

                    </td>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>







</body>
</html>