<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="bitc.next502.jsp_20251226.Person" %>

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
  <h2>이동 후 page 영역의 속성값 읽기</h2>
  <%
//    getAttribute() 로 데이터를 가져오려고 하지만 page 영역에 저장된 데이터가 없기 때문에 null 반환
//    page 영역은 페이지 이동 시 데이터가 삭제됨
    Object pInteger = pageContext.getAttribute("pageInteger");
    Object pString = pageContext.getAttribute("pageString");
    Object pPerson = pageContext.getAttribute("pagePerson");
  %>

  <ul class="list-group">
<%--    삼항 연산자를 사용하여 데이터가 있는지 확인 --%>
    <li class="list-group-item">Integer 객체 : <%= (pInteger == null) ? "값 없음" : pInteger %></li>
    <li class="list-group-item">String 객체 : <%= (pString == null) ? "값 없음" : pString%></li>
    <li class="list-group-item">Person 객체 : <%= (pPerson == null) ? "값 없음" : ((Person)pPerson).getName() %></li>
  </ul>
</div>

</body>
</html>















