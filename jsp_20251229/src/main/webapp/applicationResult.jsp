<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오전 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page import="bitc.next502.jsp_20251229.Person" %>

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
  <h2>application 영역의 속성 읽기</h2>
  <%
    Map<String, Person> maps = (Map<String, Person>) application.getAttribute("maps");

    try {
      Set<String> keys = maps.keySet();

      for (String item : keys) {
        Person person = maps.get(item);
        out.print(String.format("이름 : %s, 나이 : %d<br>", person.getName(), person.getAge()));
      }
    }
    catch (Exception e) {
      out.print("<p class='text-danger'>application 영역에 데이터가 없습니다.</p>");
    }
  %>
</div>

</body>
</html>















