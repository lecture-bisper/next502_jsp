<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
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
  <h3>jdbc 사용하기</h3>

  <ul class="list-group">
    <li class="list-group-item">
      <a href="connTest1.jsp" target="_blank" class="list-group-link">connTest1.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="connTest2.jsp" target="_blank" class="list-group-link">connTest2.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="connTest3.jsp" target="_blank" class="list-group-link">connTest3.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="connectionPoolTest.jsp" target="_blank" class="list-group-link">connectionPoolTest.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="select.jsp" target="_blank" class="list-group-link">select.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="insert.jsp" target="_blank" class="list-group-link">insert.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="update.jsp" target="_blank" class="list-group-link">update.jsp</a>
    </li>
    <li class="list-group-item">
      <a href="delete.jsp" target="_blank" class="list-group-link">delete.jsp</a>
    </li>
  </ul>
</div>

</body>
</html>