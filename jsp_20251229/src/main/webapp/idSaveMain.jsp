<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오후 3:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  쿠키를 쉽게 사용하기 위한 CookieManager 클래스 import --%>
<%@ page import="bitc.next502.jsp_20251229.CookieManager" %>

<%
//  CookieManager 를 사용하여 쿠키값 가져오기
  String loginId = CookieManager.readCookie(request, "loginId");

  String cookieCheck = "";

//  쿠키에서 읽어온 loginId 가 비었는지 확인
  if (!loginId.equals("")) {
//    loginId가 있을 경우 변수 cookieCheck 에 checked 를 저장
    cookieCheck = "checked";
  }
%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>쿠키를 사용한 아이디 저장</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2 class="text-center">로그인 페이지</h2>

  <div class="row">
    <div class="col-sm-4 mx-auto border rounded border-primary">
      <form action="idSaveProcess.jsp" method="post">
        <div class="mt-3">
          <label for="user-id" class="form-label">아이디 : </label>
          <input type="text" class="form-control" id="user-id" name="userId" value="<%=loginId%>">
        </div>
        <div class="mt-3">
          <label for="user-pw">패스워드 :</label>
          <input type="password" class="form-control" id="user-pw" name="userPw">
        </div>
        <div class="mt-2 form-check form-check-inline d-flex justify-content-end">
          <input type="checkbox" class="form-check-input" id="save-check" name="saveCheck" value="Y" <%=cookieCheck%>>
          <label for="save-check" class="form-check-label ms-2">아이디 저장하기</label>
        </div>
        <hr>
        <div class="mt-3 mb-4 d-grid gap-2 ">
          <button type="submit" class="btn btn-primary">로그인</button>
        </div>
      </form>
    </div>
  </div>
</div>

</body>
</html>















