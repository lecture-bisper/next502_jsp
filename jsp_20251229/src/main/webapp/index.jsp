<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>JSP - Hello World</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>

<div class="container mt-5">
  <h3>request 영역</h3>
  <ul class="list-group">
    <li class="list-group-item">
      <a href="requestMain.jsp" target="_blank" class="list-group-link">requestMain.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="sessionMain.jsp" target="_blank" class="list-group-link">sessionMain.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="sessionLocation.jsp" target="_blank" class="list-group-link">sessionLocation.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="applicationMain.jsp" target="_blank" class="list-group-link">applicationMain.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="applicationResult.jsp" target="_blank" class="list-group-link">applicationResult.jsp</a>
    </li>
  </ul>

  <hr>

  <h3>쿠키(Cookie) 사용하기</h3>
  <ul class="list-group">
    <li class="list-group-item">
      <a href="cookieMain.jsp" target="_blank" class="list-group-link">cookieMain.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="popupMain_01.jsp" target="_blank" class="list-group-link">popupMain_01.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="popupMain.jsp" target="_blank" class="list-group-link">popupMain.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="idSaveMain.jsp" target="_blank" class="list-group-link">idSaveMain.jsp</a>
    </li>
  </ul>
</div>

</body>
</html>