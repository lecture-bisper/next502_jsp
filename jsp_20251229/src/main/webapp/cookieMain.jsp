<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>Cookie 사용하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>1. 쿠키(Cookie) 설정</h2>
  <%
//    Cookie 클래스 타입의 객체 생성, 쿠키 정보 생성
//    쿠키의 이름을 객체 생성 시에만 가능함
    Cookie cookie = new Cookie("myCookie", "쿠키_맛나요");
//    쿠키가 저장될 위치를 설정
    cookie.setPath(request.getContextPath());
//    쿠키가 클라이언트에서 보관되는 시간을 설정, 해당 시간이 지나면 쿠키는 자동 삭제
    cookie.setMaxAge(10);
//    생성된 쿠키는 클라이언트로 전달되어야 하기 때문에 response 객체에 쿠키를 저장
    response.addCookie(cookie);
  %>

  <hr>

  <h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
  <%
//    현재 request 객체에 저장된 모든 쿠키를 가져오기, 배열 타입
    Cookie[] cookies = request.getCookies();

//    첫 접속 시에는 request 객체에 쿠키 정보가 없음
    if (cookies != null) {
//      쿠키 정보가 있을 경우 가져온 쿠키 배열에서 데이터를 출력
      for (Cookie item : cookies) {
        String cookieName = item.getName(); // 쿠키 이름 가져오기
        String cookieValue = item.getValue(); // 쿠키 값 가져오기
        out.print(cookieName + " : " + cookieValue + "<br>");
      }
    }
  %>

  <hr>

  <h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
<%--  현재 서버의 다른 페이지로 접속을 요청 --%>
  <a href="cookieResult.jsp" target="_blank" class="btn btn-link">다음 페이지에서 쿠키값 확인하기</a>
</div>

</body>
</html>















