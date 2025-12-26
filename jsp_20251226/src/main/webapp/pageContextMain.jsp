<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오후 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  자바빈즈 파일을 import --%>
<%@ page import="bitc.next502.jsp_20251226.Person" %>

<%
//  page 영역에 데이터를 저장, 현재 페이지에서만 존재하는 데이터
//  setAttribute() 를 사용하여 데이터 저장
  pageContext.setAttribute("pageInteger", 1000);
  pageContext.setAttribute("pageString", "페이지 영역의 문자열");
  pageContext.setAttribute("pagePerson", new Person("아이유", 34));
%>

<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>page 영역</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>page 영역의 속성값 읽기</h2>

  <%
//    page 영역에 저장된 데이터를 가져오기
//    getAttribute() 를 사용하여 데이터 가져오기
//    원본 데이터 타입으로 강제 타입 변환 필수
    int pInt = (int)(pageContext.getAttribute("pageInteger"));
//    toString() : 해당 객체의 내용을 문자열로 출력
    String pString = pageContext.getAttribute("pageString").toString();
    Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
  %>

  <ul class="list-group">
<%--    변수에 저장된 내용 출력 --%>
    <li class="list-group-item">int 객체 : <%= pInt %></li>
    <li class="list-group-item">String 객체 : <%= pString %></li>
    <li class="list-group-item">Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
  </ul>

  <hr>

  <h2>include 된 파일에서 page 영역 읽어오기</h2>
<%--  include 지시어 를 사용하여 다른 파일을 가져오면 현재 파일에 포함 --%>
  <%@ include file="pageInclude.jsp" %>

  <hr>

  <h2>페이지 이동 후 page 영역 읽어오기</h2>
  <a href="pageLocation.jsp" target="_blank">PageLocation.jsp 바로가기</a>
</div>

</body>
</html>















