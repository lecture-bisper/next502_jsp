<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오후 3:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>Statement 로 update 하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h3 class="text-center">Statement 로 사용자 정보 수정</h3>

  <div class="row mt-3">
    <div class="col-sm-4 mx-auto">
      <form action="updateProcess.jsp" method="post">
        <div class="mt-3">
          <label for="user-id" class="form-label">수정할 ID :</label>
          <input type="text" class="form-control" id="user-id" name="userId" placeholder="데이터를 수정할 사용자 ID를 입력하세요">
        </div>
        <div class="mt-3">
          <label for="user-pw" class="form-label">수정할 비밀번호 :</label>
          <input type="password" class="form-control" id="user-pw" name="userPw" placeholder="변경할 비밀번호를 입력하세요">
        </div>
        <div class="mt-3">
          <label for="user-name" class="form-label">수정할 이름 :</label>
          <input type="text" class="form-control" id="user-name" name="userName" placeholder="변경할 이름을 입력하세요">
        </div>
        <div class="mt-3 d-grid gap-2">
          <button type="submit" class="btn btn-primary">정보 수정</button>
          <button type="reset" class="btn btn-success">취  소</button>
        </div>
      </form>
    </div>
  </div>
</div>

</body>
</html>















