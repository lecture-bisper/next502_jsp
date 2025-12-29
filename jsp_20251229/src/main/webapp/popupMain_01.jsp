<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오후 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
//  현재 팝업창 사용 유무를 저장하는 변수 선언
  String popupMode = "on";
%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>쿠키를 이용한 팝업창 관리 ver 0.1</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>

  <style>
    div#popup {
      position: absolute;
      top: 100px;
      left: 50px;
      color: yellow;
      width: 350px;
      height: 100px;
      background-color: gray;
    }

    div#popup>div {
      position: relative;
      background-color: white;
      top: 0px;
      border: 1px solid gray;
      padding: 10px;
      color: black;
    }
  </style>

<%--  jquery 라이브러리 로드 --%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

  <script>
//    jquery 를 사용하여 버튼 이벤트 발생
    $(function() {
      $("#closeBtn").on("click", function() {
        // 해당 버튼 클릭 시 화면 숨김 처리
        $("#popup").hide();
      });
    });
  </script>
</head>
<body>

<div class="container mt-5">
  <h2>팝업 메인 페이지 (ver 0.1)</h2>
  <%
    for (int i = 1; i <= 10; i++) {
      out.print("현재 팝업창은 " + popupMode + " 상태입니다.<br>");
    }

//    자바 코드 사이에 html 코드 입력
//    스크립틀릿에서 자바 코드 입력 중 스크립틀릿 닫기 기호를 사용하고 html 태그를 입력하면 out 내장 객체를 사용하지 않고 html 태그를 입력할 수 있음
    if (popupMode.equals("on")) {
  %>
  <div id="popup">
    <h2 class="text-center">공지사항 팝업입니다.</h2>
    <div class="d-flex justity-content-end">
      <form name="popFrm">
        <input type="checkbox" id="inactiveToday" value="1">하루동안 열지 않음
        <input type="button" value="닫기" id="closeBtn">
      </form>
    </div>
  </div>
  <%
    }
  %>
</div>

</body>
</html>















