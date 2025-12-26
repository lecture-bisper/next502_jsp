<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오전 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  자바 클래스 import --%>
<%@ page import="java.util.Collection" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
//  SimpleDateFormat : 자바의 Date 클래스를 통해서 지정한 날짜 정보를 사용자가 알아보기 쉬운 형태로 변환하는 클래스
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
//  클라이언트에서 전달한 날짜 및 시간을 문자열로 가져옴
//  SimpleDateFormat 을 통해서 사용자가 원하는 형식으로 변환
//  getTime() 을 사용하여 실제 자바의 Date 클래스 타입의 데이터로 변환
  long addDate = sdf.parse(request.getParameter("addDate")).getTime();

//  long 타입으로 변환된 날짜 및 시간 정보를 Date 클래스 타입의 객체로 변환
  java.sql.Date date2 = new java.sql.Date(addDate);
  System.out.println(date2);

//  클라이언트에서 전달받은 addInt 정보를 가져옴
//  클라이언트에서 전달된 데이터는 모두 String 타입이므로 int 타입으로 변환
  int addInt = Integer.parseInt(request.getParameter("addInt"));
//  클라이언트에서 전달받은 addStr 정보를 가져옴
  String addStr = request.getParameter("addStr");

//  response 객체의 header 에 데이터 입력
//  myBirthDay 라는 이름으로 Date 타입의 데이터 입력
  response.addDateHeader("myBirthDay", addDate);
//  myNumber 라는 이름으로 int 데이터 입력
  response.addIntHeader("myNumber", addInt);
//  myNumber 라는 동일한 이름으로 int 데이터를 추가 입력
  response.addIntHeader("myNumber", 1004);
//  myName 라는 이름으로 String 데이터 입력
  response.addHeader("myName", addStr);
//  myName 라는 이름으로 저장된 데이터를 수정
  response.setHeader("myName", "안중근");
%>

<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - response</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>응답 헤더 정보 출력하기</h2>
  <%
//    getHeaderNames() : response 객체에 저장된 header 정보의 이름을 모두 가져옴
    Collection<String> headerNames = response.getHeaderNames();

//    Collection 타입에 저장된 헤더 이름을 하나씩 꺼내옴
    for (String hName : headerNames) {
//      getHeader() 를 사용하여 해당 이름으로 저장된 데이터를 가져옴
//      동일한 헤더명으로 여러 개의 데이터가 저장되어 있을 경우, getHeader() 를 사용하면 검색되는 첫번째 데이터만 가져옴
      String hValue = response.getHeader(hName);
  %>
  <li><%= hName %> : <%= hValue %></li>
  <%
    }
  %>

  <br>

  <h2>myNumber 만 출력하기</h2>

  <%
//    getHeaders() 를 사용하여 동일한 이름으로 저장된 데이터를 모두 가져옴
    Collection<String> myNumber = response.getHeaders("myNumber");
    for (String myNum : myNumber) {
  %>
  <li>myNumber : <%= myNum %></li>
  <%
    }
  %>
</div>

</body>
</html>















