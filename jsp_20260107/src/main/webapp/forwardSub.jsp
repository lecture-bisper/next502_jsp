<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오후 2:39
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

<%--  현재 페이지에서 page 및 request 영역에 저장한 데이터가 없음 --%>
<div class="container mt-5">
  <h4>포워드되는 forwardSub.jsp 페이지</h4>

  <div class="mt-3">
    <ul class="list-group">
<%--      page 및 request 영역에 저장한 데이터 가져오기 --%>
<%--      page 영역의 데이터는 가져올 수 없음 --%>
<%--      request 영역의 데이터는 가져올 수 있음 --%>
      <li class="list-group-item">page 영역 : <%=pageContext.getAttribute("pAttr")%></li>
      <li class="list-group-item">request 영역 : <%=request.getAttribute("rAttr")%></li>
    </ul>
  </div>
</div>

</body>
</html>















