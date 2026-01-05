<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 5.
  Time: 오전 10:03
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
//  loginProcess.jsp 페이지에서 세션 영역에 저장한 데이터 가져오기
//  세션 영역에 저장되는 데이터는 모두 Object 타입이므로 데이터 출력 시 원본 타입으로 강제 타입 변환
  String userId = (String) session.getAttribute("userId");
  String userName = (String) session.getAttribute("userName");

  if (userId == null || userName == null) {
    response.sendRedirect("loginForm.jsp");
  }
%>

<div class="container mt-5">
  <h3 class="text-center">세션을 사용한 로그인 성공 페이지</h3>

  <div class="mt-3 d-flex justify-content-end">
<%--    세션에서 가져온 정보를 화면에 출력 --%>
    <p class="me-3"><%=userName%>(<%=userId%>) 님 반갑습니다.</p>
    <a href="logout.jsp" class="btn btn-outline-secondary">로그아웃</a>
  </div>
</div>

</body>
</html>















