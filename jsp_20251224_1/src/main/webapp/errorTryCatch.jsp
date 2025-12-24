<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <title>try ~ catch 로 예외처리</title>
</head>
<body>
<%
//  현재 페이지에서 예외 발생 시 try ~ catch 를 사용하여 예외 처리
  try {
//    request.getParameter() : 현재 페이지를 요청 시 클라이언트에서 서버로 전달한 데이터를 가져오기
//      지정한 이름의 데이터가 없을 경우 null 을 반환
//    Integer.parseInt() : 지정한 데이터를 정수로 변환

    int myAge = Integer.parseInt(request.getParameter("age")) + 10;
    out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
  }
  catch (Exception e) {
    out.println("예외 발생 : 매개변수 age 가 null 입니다.");
  }
%>
</body>
</html>















