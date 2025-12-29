<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오전 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  미리 생성한 Person 클래스를 import --%>
<%@ page import="bitc.next502.jsp_20251229.Person" %>

<%
//  setAttribute() 를 사용하여 request 영역에 데이터 저장
  request.setAttribute("requestString", "request 영역의 문자열");
  request.setAttribute("requestPerson", new Person("아이유", 32));
%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>request 영역</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>request 영역의 속성값 삭제하기</h2>
  <%
//    removeAttribute() 를 사용하여 request 영역에 저장된 데이터 삭제
    request.removeAttribute("requestString");
//    removeAttribute() 를 사용하여 requestInteger 라는 이름의 데이터를 삭제
//    requestInteger 라는 이름의 데이터는 원래 존재하지 않음, 오류는 발생하지 않음
    request.removeAttribute("requestInteger");
  %>

  <hr>

  <h2>request 영역의 속성값 읽기</h2>
  <%
//    getAttribute() 를 사용하여 request 영역에 저장된 데이터 가져오기
//    내장 객체 영역에 데이터 저장 시 모두 Object 타입으로 저장, 가져올 때 타입 변환이 필수임
    Person rPerson = (Person)(request.getAttribute("requestPerson"));
  %>
  <ul class="list-group">
<%--    getAttribute() 를 사용하여 데이터를 가져오지만, 없는 이름의 데이터를 가져와서 null을 출력 --%>
    <li class="list-group-item">String 객체 : <%=request.getAttribute("requestString")%></li>
    <li class="list-group-item">Person 객체 : <%=rPerson.getName()%>, <%=rPerson.getAge()%></li>
  </ul>

  <hr>

  <h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>
  <%
//    forward() : response 객체의 sendRedirect() 와 같은 페이지 이동 명령, request/response 라는 2개의 매개변수를 가지고 페이지를 이동함
//    getRequestDispatcher() : forward() 를 통해서 이동할 페이지를 지정
//    페이지 이동 시 파라미터 값 추가 가능
    request.getRequestDispatcher("requestForward.jsp?paramHan=한글&paramEng=English").forward(request, response);

//    sendRedirect() 를 사용하여 requestForward.jsp 페이지로 이동
//    response.sendRedirect("requestForward.jsp");
  %>

</div>
</body>
</html>















