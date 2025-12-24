<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="utf-8">
  <title>JSP - 지시어</title>

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

<div class="container">
  <h3>page 지시어</h3>
  <ul class="list-group mt-3">
    <li class="list-group-item">
      <a href="import.jsp" target="_blank" class="list-group-link">import.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="error500.jsp" target="_blank" class="list-group-link">error500.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="errorTryCatch.jsp" target="_blank" class="list-group-link">errorTryCatch.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="errorPage.jsp" target="_blank" class="list-group-link">errorPage.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="autoFlushTest.jsp" target="_blank" class="list-group-link">autoFlushTest.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="includeMainFile.jsp" target="_blank" class="list-group-link">includeMainFile.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="scriptElements.jsp" target="_blank" class="list-group-link">scriptElements.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="requestMain.jsp" target="_blank" class="list-group-link">requestMain.jsp</a>
    </li>
  </ul>
</div>

</body>
</html>