<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오전 9:26
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
  <h2>2. 클라이언트의 요청 매개변수 읽기</h2>
  <form action="requestParameter.jsp" method="post">

    <div class="mt-3">
      <label for="user-id" class="form-label">아이디 : </label>
<%--      input 태그의 name 속성값이 서버로 데이터 전달 시 사용하는 변수명 --%>
<%--      input 태그의 value 속성값이 서버로 데이터 전달 시 전달되는 변수의 값--%>
      <input type="text" class="form-control" id="user-id" name="userId" value="">
    </div>
    <div class="mt-3">
      <label class="form-label">성별 : </label>
      <div class="form-check">
        <input type="radio" class="form-check-input" id="male" name="gender" value="male">
        <label for="male" class="form-check-label">남자</label>
      </div>
      <div class="form-check">
        <input type="radio" class="form-check-input" id="female" name="gender" value="female">
        <label for="female" class="form-check-label">여자</label>
      </div>
    </div>
    <div class="mt-3">
      <label for="form-label">관심사항 : </label>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="eco" name="favo" value="eco">
        <label for="eco" class="form-check-label">경제</label>
      </div>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="pol" name="favo" value="pol" checked>
        <label for="pol" class="form-check-label">정치</label>
      </div>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="ent" name="favo" value="ent">
        <label for="ent" class="form-check-label">연예</label>
      </div>
    </div>
    <div class="mt-3">
      <label for="intro" class="form-label">자기소개 :</label>
<%--      textarea 는 서버로 데이터 전송 시 시작 태그와 끝 태그 사이의 텍스트가 전달 됨 --%>
      <textarea class="form-control" id="intro" name="intro" rows="5"></textarea>
    </div>
    <div class="mt-3 d-flex justify-content-end">
      <button type="submit" class="btn btn-primary">전송하기</button>
    </div>
  </form>

  <br><hr><br>

  <h2>3. HTTP 요청 헤더 정보 읽기</h2>
  <a href="requestHeader.jsp" target="_blank" class="btn btn-link">요청 헤더 정보 읽기</a>
</div>
</body>
</html>















