<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 6.
  Time: 오전 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.util.List" %>

<%@ page import="bitc.next502.jsp_20260106.database.BoardDTO" %>
<%@ page import="bitc.next502.jsp_20260106.database.BoardDAO" %>

<%--  1. 페이지가 열리면 DB 연결 --%>
<%--  2. 게시물 목록 가져오기 --%>
<%--  3. DB 연결 종료 --%>
<%--  4. 가져온 게시물 목록 화면에 출력 --%>

<%
//  DB 연결
  BoardDAO dao = new BoardDAO(application);
  dao.dbOpen();

//  게시물 목록 가져오기
  List<BoardDTO> boardList = dao.selectBoardList();

//  DB 연결 종료
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
  <div class="row">
    <div class="col-sm">
      <div mt-3>
        <table class="table table-hover table-striped text-center">
          <colgroup>
            <col style="width: 10%">
            <col style="width: 50%">
            <col style="width: 10%">
            <col style="width: 20%">
            <col style="width: 10%">
          </colgroup>
          <thead>
            <tr>
              <th>글번호</th>
              <th>글제목</th>
              <th>글쓴이</th>
              <th>등록일</th>
              <th>조회수</th>
            </tr>
          </thead>
          <tbody>
<%--          out.println() 을 사용하여 화면에 출력 --%>
<%--          <%--%>
<%--            for (BoardDTO board : boardList) {--%>
<%--              out.println("<tr>");--%>
<%--              out.println("<td>" + board.getNum() + "</td>");--%>
<%--              out.println("<td class='text-start'>" + board.getTitle() + "</td>");--%>
<%--              out.println("<td>" + board.getId() + "</td>");--%>
<%--              out.println("<td>" + board.getPostdate() + "</td>");--%>
<%--              out.println("<td>" + board.getVisitcount() + "</td>");--%>
<%--              out.println("</tr>");--%>
<%--            }--%>
<%--          %>--%>

<%--          jsp의 표현식을 사용하여 화면에 출력 --%>
          <%
            for (BoardDTO board : boardList) {
          %>
            <tr>
              <td><%=board.getNum()%></td>
              <td class="text-start">
                <a href="./view.jsp?postNum=<%=board.getNum()%>" class="text-decoration-none"><%=board.getTitle()%></a>
              </td>
              <td><%=board.getId()%></td>
              <td><%=board.getPostdate()%></td>
              <td><%=board.getVisitcount()%></td>
            </tr>
          <%
            }
          %>
          </tbody>
        </table>
      </div>
      <div class="mt-3 d-flex justify-content-end">
        <a href="./write.jsp" target="_self" class="btn btn-primary">글쓰기</a>
      </div>
    </div>
  </div>
</main>

<%@ include file="/layout/footer.jsp" %>

</body>
</html>















