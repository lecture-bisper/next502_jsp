<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  include 지시어를 사용하여 지정한 파일을 현재 파일에 포함 --%>
<%--  지정한 파일의 내용을 현재 파일에 복사/붙여넣기 한 것과 같음 --%>
<%@ include file="includeFile.jsp" %>

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
  <%
//    include 지시어를 통해서 가져온 includeFile.jsp 파일에 있는 변수를 현재 jsp 파일에서 선언한 것처럼 그대로 사용할 수 있음
    out.println("오늘 날짜 : " + today);
    out.println("<br />");
    out.println("내일 날자 : " + tomorrow);
  %>
</div>
</body>
</html>















