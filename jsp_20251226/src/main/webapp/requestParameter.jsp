<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오전 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - request</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<%
//  setCharacterEncoding() : 클라이언트에서 서버로 요청 시 전달하는 데이터의 문자셋 설정
//  전달된 문자가 영어, 숫자 가 아닐 경우 문자가 제대로 표시되지 않을 수 있음
  request.setCharacterEncoding("UTF-8");
//  getParameter() : 클라이언트에서 서버로 전달한 데이터를 request 객체가 모두 가지고 있으며, request 객체로 전달된 데이터를 가져올 경우 getParameter(변수명) 을 사용
  String userId = request.getParameter("userId");
  String gender = request.getParameter("gender");
//  getParameterValues() : 클라이언트에서 서버로 전달한 배열 데이터를 가져옴
  String[] favo = request.getParameterValues("favo");
  String favoStr = "";

  if (favo != null) {
//    가져온 문자열 타입의 배열 내용을 모두 출력
    for (int i = 0; i < favo.length; i++) {
      favoStr += favo[i] + " ";
    }
  }

  String intro = request.getParameter("intro");
%>

<div class="container mt-5">
  <ul class="list-group">
    <li class="list-group-item">아이디 : <%= userId %></li>
    <li class="list-group-item">성별 : <%= gender %></li>
    <li class="list-group-item">관심사항 : <%= favoStr %></li>
    <li class="list-group-item">자기소개 : <%= intro %></li>
  </ul>
</div>

</body>
</html>















