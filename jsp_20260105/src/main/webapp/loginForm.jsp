<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 5.
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

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

<%--  로그인을 위한 단순 사용자 정보 입력 페이지 --%>
<div class="container mt-5">
  <h3 class="text-center">로그인 페이지</h3>

  <form action="loginProcess.jsp" method="post">
    <div class="row">
      <div class="col-sm-4 mx-auto">
        <div class="mt-3">
          <label for="user-id" class="form-label">사용자 ID : </label>
          <input type="text" class="form-control" id="user-id" name="userId" placeholder="사용자 ID를 입력하세요">
        </div>
        <div class="mt-3">
          <label for="user-pw" class="form-label">비밀번호 : </label>
          <input type="password" class="form-control" id="user-pw" name="userPw" placeholder="비밀번호를 입력하세요">
        </div>
        <div class="mt-3 d-grid gap-2">
          <button type="submit" class="btn btn-primary">로그인</button>
          <button type="reset" class="btn btn-secondary">취소</button>
        </div>
      </div>
    </div>
  </form>
</div>

</body>
</html>















