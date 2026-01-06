<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 6.
  Time: 오전 9:29
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

<%@ include file="/layout/header.jsp" %>

<main class="container mt-5">
  <div class="row">
    <div class="col-sm">
      <form action="./writeProcess.jsp" method="post">
        <div class="mt-3">
          <label for="title" class="form-label">글제목 : </label>
          <input type="text" class="form-control" id="title" name="title" placeholder="글 제목을 입력하세요">
        </div>
        <div class="mt-3">
          <label for="user-id" class="form-label">글쓴이 : </label>
          <input type="text" class="form-control" id="user-id" name="userId" placeholder="사용자 ID를 입력하세요">
        </div>
        <div class="mt-3">
          <label for="content" class="form-label">글내용 : </label>
          <textarea class="form-control" id="content" name="content" rows="10"></textarea>
        </div>
        <div class="mt-3 d-flex justify-content-end">
          <button type="submit" class="btn btn-primary me-2">확 인</button>
          <button type="reset" class="btn btn-secondary" id="btn-cancel">취 소</button>
        </div>
      </form>
    </div>
  </div>
</main>

<%@ include file="/layout/footer.jsp" %>

<script>
  let btnCancel = document.querySelector("#btn-cancel");

  btnCancel.addEventListener("click", function() {
    history.back();
  });

</script>
</body>
</html>















