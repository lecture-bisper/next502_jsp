<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오후 2:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>Statement 로 데이터 조회하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h3 class="text-center">데이터 조회하기</h3>

  <div class="mt-3">
    <div class="row">
      <div class="col-sm-4 mx-auto">
        <form action="selectProcess.jsp" method="get">
          <div class="mt-3">
            <label for="user-id" class="form-label">검색할 ID :</label>
            <input type="text" class="form-control" id="user-id" name="userId" placeholder="정보를 검색할 사용자 ID를 입력하세요">
          </div>
          <div class="mt-3 d-flex justify-content-end">
            <button type="submit" class="btn btn-success">검색</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

</body>
</html>















