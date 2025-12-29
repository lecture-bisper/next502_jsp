<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오전 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.util.HashMap" %>
<%@ page import="bitc.next502.jsp_20251229.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Hashtable" %>

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

<div class="container mt-5">
  <h2>application 영역의 공유</h2>
  <%
    Map<String, Person> maps = new HashMap<>();
    maps.put("actor1", new Person("아이유", 32));
    maps.put("actor2", new Person("유인나", 43));

    application.setAttribute("maps", maps);
  %>

  <p>application 영역에 속성이 저장되었습니다.</p>

  <a href="applicationResult.jsp" target="_blank" class="btn btn-link">applicationResult.jsp</a>
</div>

</body>
</html>















