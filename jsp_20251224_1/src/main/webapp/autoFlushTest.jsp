<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 2:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" buffer="1kb" autoFlush="false" %>

<%--  buffer : 화면에 UI 및 데이터를 출력하기 위한 임시 메모리 공간, 기본값 8kb --%>
<%--  autoFlush : 버퍼 메모리가 다 찼을 경우 화면에 자동 출력할지 여부 설정, 기본값 true --%>
<html>
<head>
  <title>Buffer, AutoFlush 속성 사용</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
  <h3>buffer, autoFlush 사용</h3>

  <%
    for (int i = 0; i <= 100; i++) {
      out.println("abcde12345");
    }
  %>
</div>
</body>
</html>















