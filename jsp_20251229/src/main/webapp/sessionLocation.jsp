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
  <%
//    getAttribute() 를 사용하여 session 영역에 저장된 데이터 가져오기
//    setAttribute() 로 저장된 데이터는 모두 Object 로 저장됨, 가져올 때 타입 변환 필수
    ArrayList<String> lists = (ArrayList<String>) session.getAttribute("lists");

    try {
//      for 문을 사용하여 ArrayList 에 저장된 데이터 출력
      for (String item : lists) {
        out.print(item + "<br>");
      }
    }
    catch (Exception e) {
      out.println("<p class='text-danger'>session 영역에 데이터가 없습니다.</p>");
    }
  %>
</div>
</body>
</html>















