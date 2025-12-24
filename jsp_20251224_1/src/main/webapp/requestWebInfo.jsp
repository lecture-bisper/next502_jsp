<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 3:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - request</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>

<%--  jsp 에서 제공하는 request 내장 객체를 사용하여 환경 정보를 가져옴 --%>
  <ul class="list-group">
    <li class="list-group-item">데이터 전송 방식 : <%= request.getMethod() %></li>
    <li class="list-group-item">URL : <%=request.getRequestURL()%></li>
    <li class="list-group-item">URI : <%=request.getRequestURI()%></li>
    <li class="list-group-item">프로토콜 : <%=request.getProtocol()%></li>
    <li class="list-group-item">서버명 : <%=request.getServerName()%></li>
    <li class="list-group-item">서버 포트 : <%=request.getServerPort()%></li>
    <li class="list-group-item">클라이언트 IP 주소 : <%=request.getRemoteAddr()%></li>
    <li class="list-group-item">쿼리스트링 : <%=request.getQueryString()%></li>
    <li class="list-group-item">전송된 값 1 : <%=request.getParameter("eng")%></li>
    <li class="list-group-item">전송된 값 2 : <%=request.getParameter("han")%></li>
  </ul>
</div>

</body>
</html>















