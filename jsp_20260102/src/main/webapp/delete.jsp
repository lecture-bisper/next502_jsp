<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 2.
  Time: 오후 12:03
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

<div class="container mt-5">
  <h3 class="text-center">PreparedStatement 로 데이터 삭제하기</h3>

  <div class="row mt-3">
    <div class="col-sm-4 mx-auto">
      <form action="deleteProcess.jsp" method="post">
        <div class="mt-3">
          <label for="num" class="form-label">글번호 :</label>
          <input type="text" class="form-control" id="num" name="num" placeholder="삭제할 글번호를 입력하세요">
        </div>
        <div class="mt-3 d-grid gap-2">
          <button type="submit" class="btn btn-danger">삭제</button>
        </div>
      </form>
    </div>
  </div>
</div>

</body>
</html>















