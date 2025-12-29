<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오전 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  ArrayList 클래스 import --%>
<%@ page import="java.util.ArrayList" %>

<%
//  ArrayList 객체 생성
  ArrayList<String> lists = new ArrayList<>();
//  ArrayList 에 데이터 저장
  lists.add("리스트");
  lists.add("컬렉션");

//  setAttribute() 를 사용하여 session 영역에 데이터 저장
  session.setAttribute("lists", lists);
%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>session 영역</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
<%--  a 태그로 다른 페이지 이동 --%>
  <a href="sessionLocation.jsp" target="_blank" class="btn btn-link">sessionLocation.jsp 바로가기</a>
</div>

</body>
</html>















