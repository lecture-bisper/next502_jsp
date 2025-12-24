<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 3:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  선언부 --%>
<%--  멤버 변수 및 메소드를 선언하는 부분 --%>
<%!
//  메소드 선언
  public int add(int num1, int num2) {
    return num1 + num2;
  }

//  변수 선언
  int x = 100;
  int y = 200;
%>

<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>jsp 스크립트 요소</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-5">
<%--  스크립틀릿 --%>
<%--  실제 연산이 실행되는 자바 소스 코드를 입력하는 부분 --%>
<%
  int result = add(10, 20);
%>

<%--  표현식 --%>
<%--  선언부의 메소드 및 스크립틀릿의 연산 결과를 출력하는 부분 --%>
<%--  스크립틀릿의 out.println() 의 기능과 비슷 --%>
덧셈 결과 1 : <%= result %> <br>
덧셈 결과 2 : <%= add(30, 40) %>
</div>
</body>
</html>















