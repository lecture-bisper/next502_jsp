<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 2.
  Time: 오후 3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
  SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
  long createTime = session.getCreationTime();
  String createTimeStr = sdf.format(new Date(createTime));

  long lastTime = session.getLastAccessedTime();
  String lastTimeStr = sdf.format(new Date(lastTime));

  boolean isNew = session.isNew();
  session.setMaxInactiveInterval(60);

//  Session 내장 객체 메소드

//  getAttribute(이름) : 세션 영역에 저장된 데이터를 가져옴, Object 타입으로 출력, 지정한 세션 이름의 데이터가 없을 경우 null 을 반환
//  getAttributeNames() : 세션 영역에 저장된 모든 세션 변수의 이름을 Enumeration 타입으로 출력
//  getCreationTime() : 현재 클라이언트에 대한 최초 세션 생성 시간을 출력
//  getId() : 현재 세션에 할당된 세션 ID를 출력
//  getLastAccessedTime() : 현재 세션 ID를 사용하는 클라이언트가 서버에 마지막으로 요청한 시간
//  getMaxInactiveInterval() : 현재 세션 정보가 서버에 저장되어 유지되는 시간 출력
//  isNew() : 현재 세션의 생성 여부를 출력, 처음 생성된 세션이면 true, 기존의 세션이면 false
//  setAttribute(이름, 데이터) : 세션 영역에 데이터를 저장, 기존에 저장된 세션 이름이 존재할 경우 기존 데이터를 수정
//  setMaxInactiveInterval(시간) : 현재 세션 정보를 서버에 저장하여 유지하는 시간을 설정
//  removeAttribute(이름) : 지정한 이름과 같은 세션 변수를 세션 영역에서 삭제
//  invalidate() : 현재 접속한 세션에 대해서 세션 영역에 저장된 모든 데이터를 삭제
%>

<!DOCTYPE html>
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

<div class="container mt-5">
  <h3 class="text-center">세션 설정 확인</h3>

  <ul class="list-group">
    <li class="list-group-item">세션 유지 시간 : <%=session.getMaxInactiveInterval()%> 초</li>
    <li class="list-group-item">세션 아이디 : <%=session.getId()%></li>
    <li class="list-group-item">최초 요청 시간 : <%=createTimeStr%></li>
    <li class="list-group-item">마지막 요청 시간 : <%=lastTimeStr%></li>
    <li class="list-group-item">새 세션 여부 : <%=isNew%></li>
  </ul>
</div>

</body>
</html>















