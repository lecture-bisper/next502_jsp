<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 6.
  Time: 오전 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  1. 클라이언트에서 전달받은 데이터 가져오기 --%>
<%--  2. 클라이언트에서 전달받은 데이터를 DTO 객체로 변환 --%>
<%--  3. DAO 객체 생성 후 데이터베이스 연결 --%>
<%--  4. DAO 에서 제공하는 데이터 추가 메소드를 호출, DTO 객체를 매개변수로 사용 --%>
<%--  5. 데이터베이스 연결 종료 --%>
<%--  6. 데이터 추가 결과에 따라서 리다이렉트 --%>

<%@ page import="bitc.next502.jsp_20260106.database.BoardDTO" %>
<%@ page import="bitc.next502.jsp_20260106.database.BoardDAO" %>
<%@ page import="bitc.next502.jsp_20260106.util.JSFunction" %>

<%
  request.setCharacterEncoding("UTF-8");

//  클라이언트에서 전달한 데이터 가져오기
  String title = request.getParameter("title");
  String content = request.getParameter("content");
//  클라이언트에서 세션 정보를 통해서 사용자 ID를 전달했을 경우
//  String userId = request.getParameter("userId");
//  사용자 ID 는 세션에 저장되어 있으니 세션에서 정보를 가져옴
  String userId = (String) session.getAttribute("userId");

//  가져온 데이터를 BoardDTO 타입으로 변환
  BoardDTO board = new BoardDTO();
  board.setTitle(title);
  board.setContent(content);
  board.setId(userId);

//  데이터베이스 사용을 위해 BoardDAO 객체 생성
  BoardDAO dao = new BoardDAO();
//  데이터베이스 연결
  dao.dbOpen();

//  dao 의 데이터 추가 메소드 호출, 결과값 받아옴
  int result = dao.insertBoard(board);

//  데이터베이스 연결 종료
  dao.dbClose();

//  데이터 입력 결과에 따라 리다이렉트 위치 변경
  if (result > 0) {
//    response.sendRedirect("./list.jsp");
//    알림 메시지 출력 후 페이지 이동
    JSFunction.alertLocation("게시글이 등록되었습니다", "./list.jsp", out);
  }
  else {
//    알림 메시지 출력 후 이전페이지로 이동
    JSFunction.alertBack("게시글을 등록하지 못하였습니다", out);
  }
%>
















