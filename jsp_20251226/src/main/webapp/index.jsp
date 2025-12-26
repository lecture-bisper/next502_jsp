<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko-kr">
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
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<div class="container mt-4">
  <h3>내장객체 - request</h3>
  <ul class="list-group">
    <li class="list-group-item">
      <a href="requestMain.jsp" target="_blank" class="list-group-link">requestMain.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="requestHeader.jsp" target="_blank" class="list-group-link">requestHeader.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="responseMain.jsp" target="_blank" class="list-group-link">responseMain.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="outMain.jsp" target="_blank" class="list-group-link">outMain.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="applicationMain.jsp" target="_blank" class="list-group-link">applicationMain.jsp</a>
    </li>
  </ul>

  <br><hr><br>

  <h3>내장 객체의 영역</h3>
  <ul class="list-group">
    <li class="list-group-item">
      <a href="pageContextMain.jsp" target="_blank" class="list-group-link">pageContextMain.jsp</a>
    </li>
</div>
</body>
</html>