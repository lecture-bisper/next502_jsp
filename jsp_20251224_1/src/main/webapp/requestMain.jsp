<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 3:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - request</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
<%--  서버로 데이터 전송 시 get/post 방식으로 데이터를 전달 --%>
<%--  get : 서버로 데이터 전송 시 url과 함께 데이터를 전달 --%>
<%--    a 태그를 통한 링크나 form 태그의 method 를 get 으로 설정하여 데이터 전송 --%>
  <a href="requestWebInfo.jsp?eng=Hello&han=안녕" target="_blank" class="btn btn-link">GET 방식 전송</a>
  <br>
<%--  post : html 문서의 body 에 데이터를 입력하여 전달 --%>
<%--    반드시 form 태그를 사용, method 를 post 로 설정 --%>
  <form action="requestWebInfo.jsp" method="post">
    <div class="mt-3">
      <label for="eng" class="form-label">영어 : </label>
      <input type="text" class="form-control" id="end" name="eng" value="Bye">
    </div>
    <div class="mt-3">
      <label for="han" class="form-label">한글 : </label>
      <input type="text" class="form-control" id="han" name="han" value="잘 가">
    </div>
    <div class="mt-3">
      <button type="submit" class="btn btn-primary">POST 방식 전송</button>
    </div>
  </form>
</div>

</body>
</html>















