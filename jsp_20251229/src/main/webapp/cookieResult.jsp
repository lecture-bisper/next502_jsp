<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오후 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>Cookie 사용하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>쿠키값 확인하기(쿠키가 생성된 이후의 페이지)</h2>
  <%
//    a 태그를 통해서 서버에 재접속
//    request 객체에 있는 모든 쿠키 정보를 가져옴
    Cookie[] cookies = request.getCookies();

//    쿠키 정보가 있는지 확인
    if (cookies != null) {
//      모든 쿠키 정보를 출력
      for (int i = 0; i < cookies.length; i++) {
        String cookieName = cookies[i].getName(); // 쿠키 이름 출력
        String cookieValue = cookies[i].getValue(); // 쿠키 값 출력

        out.print("쿠키명 : " + cookieName + " - 쿠키값 : " + cookieValue + "<br>");
      }
    }
  %>
</div>

</body>
</html>















