<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오후 2:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>액션태그 include</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<%
  String outerPage1 = "./inc/outerPage1.jsp";
  String outerPage2 = "./inc/outerPage2.jsp";

//  page 영역에 데이터 저장
  pageContext.setAttribute("pAttr", "동명왕");
//  request 영역에 데이터 저장
  request.setAttribute("rAttr", "온조왕");
%>

<div class="container mt-5">
  <h3>지시어와 액션 태그 동작 방식 비교</h3>

  <div class="mt-3">
    <h4>지시어로 include</h4>

<%--    지시어 방식으로 include 를 진행하여 외부 파일을 소스 통째로 복사하여 붙여넣기하여 사용 --%>
    <%@ include file="./inc/outerPage1.jsp" %>
<%--    지시어 방식에서 jsp의 표현식을 사용할 수 없음 --%>
<%--    <%@ include file="<%=outerPage1%>" %>--%>
    <p>외부 파일에 선언한 변수 : <%=newVar1%></p>
  </div>

  <hr>

  <div class="mt-3">
    <h4>액션태그로 include</h4>

<%--    액션태그 방식으로 include 를 진행하여 실행 흐름이 외부 파일로 이동하여 진행하고 외부 파일 실행 완료 후 현재 파일로 복귀 --%>
<%--    <jsp:include page="./inc/outerPage2.jsp"></jsp:include>--%>
<%--    액션태그 방식에서는 jsp의 표현식을 사용할 수 있음--%>
    <jsp:include page="<%=outerPage2%>"></jsp:include>
<%--    액션태그로 include 를 진행 시 외부 파일에 선언한 변수를 가져올 수 없음 --%>
<%--    <p>외부 파일에 선언한 변수 : <%=newVar2%></p>--%>
  </div>
</div>

</body>
</html>















