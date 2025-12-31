<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>Statement 로 delete</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h3>Statement 로 delete </h3>

  <div class="mt-3 row">
    <div class="col-sm-4 mx-auto">
      <form action="deleteProcess.jsp" method="post">
        <div class="mt-3">
          <label for="user-id" class="form-label">삭제할 ID :</label>
          <input type="text" class="form-control" id="user-id" name="userId" placeholder="삭제할 사용자의 ID를 입력하세요">
        </div>
        <div class="mt-3 d-grid gap-2">
          <button type="submit" class="btn btn-danger">사용자 삭제</button>
          <button type="reset" class="btn btn-secondary">취 소</button>
        </div>
      </form>
    </div>
  </div>
</div>

</body>
</html>















