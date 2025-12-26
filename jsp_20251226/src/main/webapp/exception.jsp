<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - exception</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <%
    int status = response.getStatus();

    if (status == 404) {
      out.print("404 에러가 발생했습니다.<br>");
      out.print("파일 경로를 확인해주세요");
    }
    else if (status == 405) {
      out.print("405 에러가 발생했습니다.<br>");
      out.print("요청 방식(method) 을 확인해주세요");
    }
    else if (status == 500) {
      out.print("500 에러가 발생했습니다.<br>");
      out.print("소스 코드에 오류가 없는지 확인해주세요");
    }
  %>
</div>

</body>
</html>















