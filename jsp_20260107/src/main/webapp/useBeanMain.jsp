<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>액션태그 - useBean</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h3>액션태그 useBean 사용하기</h3>

<%--  jsp 에서 자바 클래스의 객체를 생성 시 해당 클래스를 지시어로 import 하고, 스크립틀릿을 선언하여 자바의 클래스 객체 생성 방식을 사용함 --%>
<%--  <%@ page import="bitc.next502.jsp_20260107.Person" %>--%>
<%--  <%--%>
<%--    Person person = new Person("아이유", 32);--%>
<%--    person.setName("임꺽정");--%>
<%--    person.setAge(20);--%>
<%--  %>--%>

<%--  jsp 에서 자바 클래스의 객체 생성 시 액션 태그의 useBean 을 사용하여 자바 클래스의 객체를 생성할 수 있음 --%>
  <jsp:useBean id="person" class="bitc.next502.jsp_20260107.Person" scope="request"></jsp:useBean>

  <div class="mt-3">
    <h4>setProperty 액션 태그로 자바빈즈 속성값 설정하기</h4>

<%--    자바의 setter 대신 사용 --%>
    <jsp:setProperty name="person" property="name" value="아이유"></jsp:setProperty>
    <jsp:setProperty name="person" property="age" value="32"></jsp:setProperty>
  </div>

  <hr>

  <div class="mt-3">
    <h4>getProperty 액션 태그로 자바빈즈에 속성값 가져오기</h4>

    <ul>
<%--      자바의 getter 대신 사용 --%>
      <li>이름 : <jsp:getProperty name="person" property="name"/></li>
      <li>나이 : <jsp:getProperty name="person" property="age"/></li>
    </ul>
  </div>

  <hr>

  <div class="mt-3">
    <h4>자바빈즈 속성 읽기</h4>

    <ul>
<%--      useBean 으로 생성된 자바빈즈 사용 시 표현식을 사용하여 객체의 멤버를 사용 --%>
      <li>이름 : <%=person.getName()%></li>
      <li>나이 : <%=person.getAge()%></li>
    </ul>

  </div>

</div>

</body>
</html>















