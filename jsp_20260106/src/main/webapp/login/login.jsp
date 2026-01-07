<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오전 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>jsp 회원제 게시판</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<%@ include file="/layout/navbar.jsp" %>
<%@ include file="../layout/header.jsp" %>

<main class="container mt-5">
  <div class="row">
    <div class="col-sm-4 mx-auto border rounded-3 px-4 py-3">
      <form action="loginProcess.jsp" method="post">
        <div class="mt-3 form-floating">
          <input type="text" class="form-control" id="user-id" name="userId" placeholder="사용자 ID">
          <label for="user-id">사용자 ID</label>
        </div>
        <div class="mt-3 form-floating">
          <input type="password" class="form-control" id="user-pw" name="userPw" placeholder="사용자 비밀번호">
          <label for="user-pw">사용자 비밀번호</label>
        </div>
        <hr class="my-t">
        <div class="my-3 d-grid gap-2">
          <button type="submit" class="btn btn-primary">로그인</button>
          <button type="reset" class="btn btn-outline-secondary" id="btn-cancel">취소</button>
        </div>
      </form>
    </div>
  </div>
</main>

<%@ include file="../layout/footer.jsp" %>

<script>
  const btnCancel = document.querySelector("#btn-cancel");
  btnCancel.addEventListener("click", function() {
    location.href="../board/list.jsp";
  });
</script>
</body>
</html>















