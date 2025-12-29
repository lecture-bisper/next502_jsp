<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오전 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  Person 클래스 import --%>
<%@ page import="bitc.next502.jsp_20251229.Person" %>

<%--  setAttribute() 를 사용한 부분이 없음 --%>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>request 영역</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>포워드로 전달된 페이지</h2>
  <h4>requestMain 파일의 request 영역 속성 읽기</h4>
  <%
//    getAttribute() 를 사용하여 request 영역에 저장된 데이터 가져오기
    Person rPerson = (Person)(request.getAttribute("requestPerson"));
  %>
  <ul class="list-group">
<%--    getAttribute() 를 사용하여 request 영역에 저장된 데이터 가져오기 --%>
    <li class="list-group-item">String 객체 : <%=request.getAttribute("requestString")%></li>
    <li class="list-group-item">Person 객체 : <%=rPerson == null ? "값없음" : rPerson.getName()%>, <%=rPerson == null ? "값없음" : rPerson.getAge()%></li>
  </ul>

  <hr>

  <h4>매개변수로 전달된 값 출력하기</h4>
  <%
    request.setCharacterEncoding("UTF-8");
//    forward 시 파라미터값으로 전달받은 데이터 가져오기
    out.println(request.getParameter("paramHan"));
    out.println(request.getParameter("paramEng"));
  %>
</div>
</body>
</html>















