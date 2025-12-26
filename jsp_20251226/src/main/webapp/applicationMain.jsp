<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오후 2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - application</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>web.xml 에 설정한 내용 읽어오기</h2>
<%--  getInitParameter() : web.xml 파일에 입력된 내용을 가져옴 --%>
  초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %>

  <h2>서버의 물리적 경로 얻어오기</h2>
  application 내장 객체 : <%= application.getRealPath("./") %>

  <h2>선언부에서 application 내장 객체 사용하기</h2>
  <%!
    public String useImplicitObject() {
      return this.getServletContext().getRealPath("./");
    }

    public String useImplicitObject(ServletContext app) {
      return app.getRealPath("./");
    }
  %>

  <ul class="list-group">
    <li class="list-group-item">this 사용 : <%= useImplicitObject() %></li>
    <li class="list-group-item">내장 객체를 인수로 전달 : <%= useImplicitObject(application) %></li>
  </ul>
</div>

</body>
</html>















