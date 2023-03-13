<%@page import="com.my.ch.dto.PostDto"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<html>
<head>
  <title>Home</title>
  <link rel = "stylesheet"
        href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

  <!-- Popper.js, Bootstrap JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min"></script>
  <meta charset="UTF-8">

</head>
<body>

<%
  String id = (String)session.getAttribute("userid");
  System.out.println(id);

  if(id==null || id.equals("null")){
%>
로그인:<%=id %>

<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">💪🏻 김종국갤러리 </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/board/getList?category_id=1">노래 게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/board/getList?category_id=2">유튜브 게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/board/getList?category_id=3">패션 게시판</a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false" id="dropdownBtn">
            로그인
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/member/joinpage">회원가입</a></li>
            <li><a href="javascript:void(0)" class="dropdown-item" onclick="window.open('/member/loginpage', 'popup', 'width=800,height=600, top=50%, left=50%, margin-top=-300px, margin-left=-400px')"> 로그인 </a></li>

          </ul>
        </li>
      </ul>
    </div>
    <form class="d-flex" role="search">
      <input class="form-control me-2" type="search" placeholder="통합 검색" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>



<script>
  $('#dropdownBtn').on('show.bs.dropdown', function () {
    //클릭하는 순간 하위 버튼들이 보여질 때
  })

  $('#dropdownBtn').on('shown.bs.dropdown', function () {
    //하위 버튼들이 다 보여지고 난 뒤
  })

  $('#dropdownBtn').on('hide.bs.dropdown', function () {
    //하위 버튼이 닫혔을 때
  })

  $('#dropdownBtn').on('hidden.bs.dropdown', function () {
    //하위 버튼이 닫힌 후
  })
</script>
<%
}else{
%>
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">💪🏻 김종국갤러리 </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/board/getList?category_id=1">노래 게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/board/getList?category_id=2">유튜브 게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/board/getList?category_id=3">패션 게시판</a>
        </li>

        <li class="nav-item dropdown">
          <form action="/member/logout" method="post">
            <button class="nav-link dropdown-toggle" aria-expanded="false" type="submit" style="border-style: none">로그아웃</button>
          </form>
        </li>
      </ul>
    </div>
    <form class="d-flex" role="search">
      <input class="form-control me-2" type="search" placeholder="통합 검색" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>

로그인 아이디: <%=id%>




<%
  }
%>




</body>
</html>