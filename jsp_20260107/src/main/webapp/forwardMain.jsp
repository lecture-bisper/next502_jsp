<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

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

<%
//  원본 페이지에서 page 및 request 영역에 데이터 저장
  pageContext.setAttribute("pAttr", "김유신");
  request.setAttribute("rAttr", "계백");
%>

<div class="container mt-5">
  <h3>액션태그로 forward</h3>

  <div>
    <h4>원본인 forwardMain.jsp 페이지</h4>

    <ul class="list-group">
<%--      저장된 데이터 출력 --%>
      <li class="list-group-item">page 영역 : <%=pageContext.getAttribute("pAttr")%></li>
      <li class="list-group-item">request 영역 : <%=request.getAttribute("rAttr")%></li>
    </ul>
  </div>

  <hr>

  <div class="mt-3">
<%--    액션 태그로 forward, 서버 내부에서 forwardSub.jsp 로 페이지를 이동함 --%>
    <jsp:forward page="forwardSub.jsp"></jsp:forward>

<%--    스크립틀릿으로 forward --%>
<%--    <%--%>
<%--      request.getRequestDispatcher("./forwardSub.jsp").forward(request, response);--%>
<%--    %>--%>
  </div>
</div>

</body>
</html>















