<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오전 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - response</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>1. 로그인 폼</h2>
  <%
//    request.getParameter() 를 사용하여 "loginErr" 라는 데이터를 가져오기
//    해당 데이터가 있으면 가져오고 없으면 null 을 가져옴
    String loginErr = request.getParameter("loginErr");
//    가져온 데이터가 null 인지 확인
    if (loginErr != null) {
      out.println("로그인 실패");
    }
  %>

<%--  responseLogin.jsp 로 데이터 전송, post 방식으로 데이터 전달 --%>
  <form action="responseLogin.jsp" method="post">
    <div class="mt-3">
      <label for="user-id" class="form-label">아이디 : </label>
      <input type="text" class="form-control" id="user-id" name="userId">
    </div>
    <div class="mt-3">
      <label for="user-pw" class="form-label">비밀번호 : </label>
      <input type="text" class="form-control" id="user-pw" name="userPw">
    </div>
    <div class="mt-3">
      <button type="submit" class="btn btn-primary">로그인</button>
    </div>
  </form>

  <br><hr><br>

  <h2>2. HTTP 응답 헤더 설정하기</h2>
  <form action="responseHeader.jsp" method="get">
    <div class="mt-3">
      <label for="add-date" class="form-label">날짜 형식 : </label>
      <input type="text" class="form-control" id="add-date" name="addDate" value="2025-12-26 11:16">
    </div>
    <div class="mt-3">
      <label for="add-int" class="form-label">숫자 형식 : </label>
      <input type="text" class="form-control" id="add-int" name="addInt" value="8282">
    </div>
    <div class="mt-3">
      <label for="add-str" class="form-label">문자 형식 : </label>
      <input type="text" class="form-control" id="add-str" name="addStr" value="아이유">
    </div>
    <div class="mt-3">
      <button type="submit" class="btn btn-primary">응답 헤더 & 출력</button>
    </div>
  </form>
</div>

</body>
</html>















