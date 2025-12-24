<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 12:46
  To change this template use File | Settings | File Templates.
--%>
<%--  isErrorPage : 현재 페이지가 예외 처리를 위한 페이지 여부인 것을 확인하는 속성 --%>
<%--  해당 속성을 true로 설정해야 사용 가능 --%>
<%--  해당 속성이 true 일 경우 exception 객체를 사용할 수 있음 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isErrorPage="true" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>errorPage, isErrorPage 속성으로 예외처리</title>
</head>
<body>
<h2>서비스 중 일시적인 오류가 발생하였습니다.</h2>
<p>
  오류명 : <%= exception.getClass().getName() %> <br>
  오류 메시지 : <%= exception.getMessage() %>
</p>
</body>
</html>















