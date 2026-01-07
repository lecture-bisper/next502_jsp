<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오후 3:35
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

<div class="container mt-5">
  <h4>포워드된 페이지에서 매개변수 확인</h4>

<%--  포워드 이전 페이지에서 useBean 을 사용하고 request 영역에 저장했을 경우 이전 페이지의 자바빈즈 이름과 동일한 이름으로 현재 페이지에서 useBean 액션 태그를 사용하고 scope 도 동일하게 맞추면 이전 페이지에서 선언한 자바빈즈를 그대로 사용할 수 있음 --%>
  <jsp:useBean id="person" class="bitc.next502.jsp_20260107.Person" scope="request"></jsp:useBean>

  <ul>
<%--    이전페이지에서 선언한 person 객체의 age 속성값을 출력 --%>
    <li>나이 : <jsp:getProperty name="person" property="age"/></li>
<%--  param 액션태그로 전달한 데이터를 getParameter() 로 가져와서 사용 --%>
    <li>본명 : <%=request.getParameter("param1")%></li>
    <li>출생 : <%=request.getParameter("param2")%></li>
    <li>특징 : <%=request.getParameter("param3")%></li>
  </ul>

  <hr>

<%--  include 액션 태그 를 사용하여 현재 페이지 포함할 외부 페이지에 데이터 전달--%>
  <jsp:include page="./inc/paramInclude.jsp">
    <jsp:param name="loc1" value="강원도 영월"></jsp:param>
    <jsp:param name="loc2" value="영월면"></jsp:param>
  </jsp:include>


</div>

</body>
</html>















