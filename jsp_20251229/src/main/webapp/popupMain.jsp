<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
//  팝업창 유무를 저장하는 변수
  String popupMode = "on"; // 기본값으로 on 사용

//  쿠키 가져오기
  Cookie[] cookies = request.getCookies();

//  가져온 쿠키가 있는지 여부 확인
//  첫 접속 시 쿠키가 없음
//  재 좁속 시 쿠키를 가져옴
  if (cookies != null) {
//    쿠키가 있을 경우 for 문 실행
    for (Cookie item : cookies) {
      String cookieName = item.getName();
      String cookieValue = item.getValue();

//      가져온 쿠키 중 쿠키 이름이 popupClose 와 같은지 비교
      if (cookieName.equals("popupClose")) {
//        팝업창 유무를 저장하는 변수에 쿠키값을 저장
        popupMode = cookieValue;
      }
    }
  }
%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>쿠키를 이용한 팝업 관리</title>

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
//    화면이 모두 로딩 된 후 아래의 자드바스크립트 코를 실행하는 이벤트
    $(document).ready(function() {
      // id 값이 closeBtn 인 태그를 클릭할 경우 이벤트 발생
      $("#closeBtn").on("click", function() {
        // id 값이 popup 인 태그를 숨김 처리
        $("#popup").hide();

        // input 태그 중 id 속성값이 inactiveToday 인 태그의 현재 상태가 checked 인 태그를 선택
        // val() : jquery 에서 제공하는 함수로 지정한 태그의 value 속성값 가져오기
        var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();

        // ajax() : jquery 에서 제공하는 자바스크립트를 통해서 서버와 직접 통신할 수 있도록 하는 함수
        $.ajax({
          url: "./popupCookie.jsp",        // 접속할 서버의 url
          type: "GET",                      // 서버에 데이터를 전달하는 방식 (GET, POST)
          data: {inactiveToday : chkVal},   // 서버에 전달할 파라미터 이름 및 데이터
          dataType: "text",                 // 서버와 통신 후 응답 받을 경우 응답 받는 데이터 타입
          // 서버와 통신 성공 시 동작할 내용, 매개변수가 서버에서 클라이언트로 전달한 데이터
          success: function(data) {
            if (data != '') {
              location.reload();  // 화면 새로 고침, 웹 브라우저의 새로 고침 (F5 버튼)
            }
          }
        });
      });
    });
  </script>
</head>
<body>

<div class="container mt-5">
  <h2>팝업 메인 페이지</h2>
  <%
//    화면에 현재 popupMode 상태 출력
    for (int i = 1; i <= 10; i++) {
      out.print("현재 팝업창은 " + popupMode + "상태입니다.<br>");
    }

//    popupMode 가 on 이면 팝업창 출력
    if (popupMode.equals("on")) {
  %>
    <div id="popup">
      <h2 class="text-center">공지사항 팝업입니다.</h2>
      <div class="text-end">
        <form name="popFrm">
          <input type="checkbox" id="inactiveToday" value="1">하루동안 열지 않음
          <input type="button" value="닫기" id="closeBtn">
      </div>
    </div>
  <%
    }
  %>
</div>

</body>
</html>















