<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오전 10:49
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
<%
//  responseMain.jsp 에서 데이터를 전달하는 페이지
//  클라이언트에서 전달한 데이터 가져오기
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");

//  클라이언트에서 전달받은 데이터와 서버의 데이터가 같은지 확인
  if (userId.equals("bitc") && userPw.equalsIgnoreCase("1234")) {
//    response 객체에서 제공하는 sendRedirect() 를 사용하여 지정한 페이지로 이동
    response.sendRedirect("responseWelcome.jsp");
  }
  else {
//    클라이언트에서 전달받은 데이터와 서버의 데이터가 다를 경우
//    로그인 정보 입력 페이지로 다시 이동
    request.getRequestDispatcher("responseMain.jsp?loginErr=1").forward(request, response);
  }
%>
</body>
</html>















