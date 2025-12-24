<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

<%-- page 지시어의 import 속성 --%>
<%--  자바의 클래스를 현재 jsp 파일에 import 하여 사용 --%>
<%--  일반 자바 소스코드처럼 작성할 수 있음 --%>

<%-- trimDirectiveWhitespaces : 사용자 요청에 의해서 클라이언트로 전달된 jsp 문서는 지시어 부분을 공백으로 제공함 --%>
<%--  해당 속성을 사용 시 지시어 공백 부분을 제거할 수 있음 --%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date"%>

<html>
<head>
  <meta charset="UTF-8">
  <title>page 지시어 - import 속성</title>
</head>
<body>
<%
//  java.util 패키지의 Date 클래스를 import 하여 사용
  Date today = new Date();
//  java.util 패키지의 SimpleDateFormat 클래스를 import 하여 사용
  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
  String todayStr = dateFormat.format(today);
  out.println("오늘 날짜 : " + todayStr);
%>

</body>
</html>















