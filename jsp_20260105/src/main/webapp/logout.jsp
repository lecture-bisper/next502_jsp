<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 5.
  Time: 오전 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>Title</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<%
//  세션에 저장된 지정한 데이터를 삭제
  session.removeAttribute("userId");
  session.removeAttribute("userName");
  session.removeAttribute("regiDate");

//  세션 영역에 저장된 모든 데이터를 삭제
  session.invalidate();
%>

<div class="container mt-5">
  <h3 class="text-center">로그아웃 페이지 (세션 삭제)</h3>

  <div class="mt-3 text-center">
    <p>로그아웃 되었습니다.</p>
    <p>5초 후 자동으로 Login 페이지로 이동합니다.</p>
    <a href="loginForm.jsp" target="_self" class="btn btn-link">로그인 페이지로 이동</a>
  </div>
</div>

<script>
//  자바스크립트의 타이머를 사용하여 지정한 페이지로 이동
  setTimeout(function() {
    location.href = "loginForm.jsp";
  }, 5000);
</script>

</body>
</html>















