<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오후 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>액션태그 - param</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<%
  request.setCharacterEncoding("UTF-8");
//  변수 선언
  String pValue = "영화배우";
%>

<div class="container mt-5">
  <h3>액션태그 param 사용하기</h3>

<%--  액션태그 useBean 을 사용하여 Person 클래스 타입의 객체 person 을 생성 --%>
<%--  useBean 의 속성 scope 를 사용하여 person 객체를 request 영역에 저장 --%>
  <jsp:useBean id="person" class="bitc.next502.jsp_20260107.Person" scope="request"></jsp:useBean>
<%--  액션태그 setProperty 를 사용하여 person 객체의 속성에 데이터 저장 --%>
  <jsp:setProperty name="person" property="name" value="유재석"></jsp:setProperty>
  <jsp:setProperty name="person" property="age" value="55"></jsp:setProperty>

  <hr>

<%--  액션태그 forward 를 사용하여 paramForward.jsp 페이지로 이동 --%>
<%--  paramForward.jsp 로 이동 시 url에 param1=원빈 을 추가하여 데이터 전달 --%>
<%--  액션태그 param 을 사용하여 데이터를 추가로 전달 --%>
  <jsp:forward page="paramForward.jsp?param1=원빈">
    <jsp:param name="param2" value="강원도"></jsp:param>
    <jsp:param name="param3" value="<%=pValue%>"></jsp:param>
  </jsp:forward>
</div>

</body>
</html>















