<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 6.
  Time: 오전 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  1. 데이터베이스 사용을 위해 DTO, DAO import --%>
<%--  2. 클라이언트에서 전달받은 글번호 가져오기 --%>
<%--  3. DAO 객체 생성 후 데이터베이스 연결 --%>
<%--  4. dao 에서 제공하는 게시글 상세 정보 가져오기 메소드를 호출 --%>
<%--  5. 가져온 게시물 정보를 DTO 타입으로 변환 --%>
<%--  6. 데이터베이스 연결 종료 --%>
<%--  7. 가져온 게시물 정보를 화면에 출력 --%>

<%@ page import="bitc.next502.jsp_20260106.database.BoardDTO" %>
<%@ page import="bitc.next502.jsp_20260106.database.BoardDAO" %>

<%
//  클라이언트에서 전달한 글 번호 가져오기, getParameter() 모든 데이터를 문자열로 가져옴
//  문자열을 int 타입으로 변환해야 함
  int postNum = Integer.parseInt(request.getParameter("postNum"));

//  데이터베이스 사용을 위해 BoardDAO 타입의 객체 생성
  BoardDAO dao = new BoardDAO();
//  데이터베이스 연결
  dao.dbOpen();

//  지정한 게시글 상세 정보 가져오기
  BoardDTO board = dao.selectBoardDetail(postNum);

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
  <form id="frm">
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
        <button type="button" class="btn btn-secondary float-start" id="btn-list">목록</button>
        <button type="button" class="btn btn-danger float-end ms-2" id="btn-delete">삭제</button>
        <button type="button" class="btn btn-warning float-end" id="btn-edit">수정</button>
        <input type="hidden" name="num" value="<%=board.getNum()%>">
      </div>
    </div>
  </form>
</main>

<%@ include file="/layout/footer.jsp" %>

<script>
  const btnList = document.querySelector("#btn-list");
  btnList.addEventListener("click", function () {
    history.back();
  });

  const btnEdit = document.querySelector("#btn-edit");
  btnEdit.addEventListener("click", function () {
    location.href = "./edit.jsp?num=<%=board.getNum()%>";
  });

  const btnDelete = document.querySelector("#btn-delete");
  btnDelete.addEventListener("click", function () {
    const confirmed = confirm("정말 삭제하시겠습니까?");

    if (confirmed == true) {
      const frm = document.querySelector("#frm");
      frm.method = "post";
      frm.action = "./deleteProcess.jsp";
      frm.submit();
    }
  });
</script>
</body>
</html>















