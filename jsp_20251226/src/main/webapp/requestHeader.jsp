<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오전 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
  <h2>3. 요청 헤더 정보 출력하기</h2>

  <ul class="list-group">
  <%
//    Enumeration : Iterator 와 비슷한 반복자
//    getHeaderNames() : request 객체가 가지고 있는 모든 헤더의 이름을 다 가져옴
    Enumeration<String> headers = request.getHeaderNames();

//    hasMoreElements() : Iterator 의 hasNext() 와 같은 기능을 하는 메소드, 반복자 안에 출력할 데이터가 있는지 확인
    while (headers.hasMoreElements()) {
//      nextElement() : Iterator 의 next() 와 같은 기능을 하는 메소드, 반복자 안의 데이터를 하나 출력함
      String headerName = headers.nextElement();
      String headerValue = request.getHeader(headerName);
      out.println("<li class='list-group-item'>헤더명 : " + headerName + ", 헤더값 : " + headerValue + "</li>");
    }
  %>
  </ul>

  <p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p>
</div>

</body>
</html>















