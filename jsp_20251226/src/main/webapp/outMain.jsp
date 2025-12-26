<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오후 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - out</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <%
  //  버퍼 내용 삭제하기
//    out 객체를 사용하여 html 화면에 텍스트 출력
    out.print("출력되지 않는 텍스트");
//    clearBuffer() 를 사용하여 화면의 내용 삭제
    out.clearBuffer();

    out.print("<h2>out 내장 객체</h2>");

//    getBufferSize() 를 사용하여 버퍼의 현재 크기 상태 확인
    out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>");
//    위에서 print() 를 사용하여 문자를 html 에 출력하고 남은 버퍼의 사이즈를 출력
    out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>");

//    flush() 를 사용하여 현재 버퍼에 저장된 내용을 바로 출력(기존 내용 삭제)
    out.flush();
    out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br>");

//    print() 를 사용하여 뒤에 공백이 없음
    out.print(1);
//    println() 을 사용하여 뒤에 공백이 있음
    out.println(false);
    out.print('가');
  %>
</div>

</body>
</html>















