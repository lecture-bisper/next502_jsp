<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오후 2:11
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

<%--  현재 파일에서 page 및 request 영역에 저장한 데이터가 없음 --%>
<div class="container mt-5">
  <h3>외부 파일 1</h3>
  <%
    String newVar1 = "고구려 세운 동명왕";
  %>

  <ul class="list-group">
<%--    page 및 request 영역에 저장한 데이터 가져오기 --%>
<%--    page 및 request 영역에 저장된 데이터를 가져올 수 있음 --%>
    <li class="list-grou-item">page 영역 : <%=pageContext.getAttribute("pAttr")%></li>
    <li class="list-grou-item">request 영역 : <%=request.getAttribute("rAttr")%></li>
  </ul>
</div>

</body>
</html>















