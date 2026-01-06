<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 6.
  Time: 오전 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  1. 데이터베이스 사용 시 필요한 클래스 import --%>
<%--  2. 클라이언트에서 전달받은 데이터 가져오기 --%>
<%--  3. DAO 객체 생성 및 데이터베이스 연결 --%>
<%--  4. DAO 에서 제공하는 기존 게시물 정보 가져오기 메소드 호출 --%>
<%--  5. 데이터베이스 연결 종료 --%>
<%--  6. 가져온 데이터를 화면에 출력 --%>
<%--  7. 사용자가 데이터 수정 --%>
<%--  8. 수정된 데이터를 form 을 통해서 editProcess.jsp 로 전달 --%>

<%@ page import="bitc.next502.jsp_20260106.database.BoardDTO" %>
<%@ page import="bitc.next502.jsp_20260106.database.BoardDAO" %>

<%
//  클라이언트에서 전달받은 데이터 가져오기, 문자열을 정수로 변환
  int num = Integer.parseInt(request.getParameter("num"));

//  DAO 객체 생성 및 데이터베이스 연결
  BoardDAO dao = new BoardDAO();
  dao.dbOpen();

//  DAO 에서 제공하는 게시물 상세 정보 가져오기 메소드 호출
  BoardDTO board = dao.selectBoardDetail(num);

//  데이터베이스 연결 종료
  dao.dbClose();
%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>jsp 회원제 게시판</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<%@ include file="/layout/header.jsp" %>

<main class="container mt-5">
  <form action="./editProcess.jsp" method="post" id="frm">
    <div class="row mt-3">
      <div class="col-sm">
        <label for="title" class="form-label">글제목 :</label>
        <input type="text" class="form-control" id="title" name="title" value="<%=board.getTitle()%>">
      </div>
    </div>
    <div class="row mt-3">
      <div class="col-sm">
        <label for="user-id" class="form-label">사용자 ID :</label>
        <input type="text" class="form-control" id="user-id" name="userId" value="<%=board.getId()%>" readonly>
      </div>
      <div class="col-sm">
        <label for="post-date" class="form-label">등록시간 :</label>
        <input type="text" class="form-control" id="post-date" name="postDate" value="<%=board.getPostdate()%>" readonly>
      </div>
      <div class="col-sm">
        <label for="visit-count" class="form-label">조회수 :</label>
        <input type="text" class="form-control" id="visit-count" name="visitCount" value="<%=board.getVisitcount()%>" readonly>
      </div>
    </div>
    <div class="row mt-3">
      <div class="col-sm">
        <label for="content" class="form-label">글내용 :</label>
        <textarea class="form-control" id="content" name="content" rows="10"><%=board.getContent()%></textarea>
      </div>
    </div>
    <div class="row mt-3">
      <div class="clearfix">
        <button type="reset" class="btn btn-secondary float-end ms-2" id="btn-cancel">취소</button>
        <button type="submit" class="btn btn-warning float-end" id="btn-edit">수정</button>
        <input type="hidden" name="num" value="<%=board.getNum()%>">
      </div>
    </div>
  </form>
</main>

<%--<footer class="mt-5 border-top p-5">--%>
<%--  <p class="lead text-muted text-center">made by next502</p>--%>
<%--</footer>--%>

<%@ include file="/layout/footer.jsp"%>

<script>
  const btnCancel = document.querySelector("#btn-cancel");
  btnCancel.addEventListener("click", function() {
    history.back();
  });
</script>
</body>
</html>















