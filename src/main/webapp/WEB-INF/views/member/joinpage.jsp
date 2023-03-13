<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="/resources/css/join.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<script>

$(document).ready(function() {
	   $('#name,#email,#userid,#password').focusout(function() {
	      if($(this).val() !== '') {
	         $(this).addClass('has-value');
	      } else {
	         $(this).removeClass('has-value');
	      }
	   });
	});
</script>


<section class="get-in-touch">
   <h1 class="title">회원가입</h1>
   <form class="contact-form row" action="join" method="POST">
      <div class="form-field col-lg-6">
         <input id="userid" class="input-text js-input" type="text" name="user_id" required>
         <label class="label" for="name" class="has-value" >아이디</label>
      </div>
       <div class="form-field col-lg-6 ">
         <%--@declare id="phone"--%><input id="password" class="input-text js-input" type="password" name="password" required>
         <label class="label" for="phone" class="has-value">비밀번호</label>
      </div>
        <div class="form-field col-lg-6 ">
         <%--@declare id="company"--%><input id="name" class="input-text js-input" type="text" name="name" required>
         <label class="label" for="company" class="has-value">이름</label>
      </div>
      <div class="form-field col-lg-6 ">
         <input id="email" class="input-text js-input" type="email" name="email" required>
         <label class="label" for="email" class="has-value">E-mail</label>
      </div>
      

      <div class="form-field col-lg-12">
         <input class="submit-btn" type="submit" value="Submit">
      </div>
   </form>
</section>

</body>
</html>