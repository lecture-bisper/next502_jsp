<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 12:44
  To change this template use File | Settings | File Templates.
--%>
<%-- errorPage : 현재 페이지에서 오류가 발생했을 경우 이동할 페이지를 지정하는 속성 --%>
<%--  웹 브라우저의 주소창의 url은 그대로 유지 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="isErrorPage.jsp" %>
<html>
<head>
  <title>errorPage, isErrorPage 속성으로 예외처리</title>
</head>
<body>
<%
//  예외가 발생할 수 있는 코드
  int myAge = Integer.parseInt(request.getParameter("age")) + 10;
  out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
%>
</body>
</html>















