<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 6.
  Time: 오전 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  1. 데이터베이스 사용 시 필요한 클래스 import --%>
<%--  2. 클라이언트에서 전달받은 데이터 가져오기 --%>
<%--  3. DAO 객체 생성 및 데이터베이스 연결 --%>
<%--  4. 수정된 데이터를 DAO 에서 제공하는 데이터 수정 메소드 호출 --%>
<%--  5. 데이터베이스 연결 종료 --%>
<%--  6. 결과에 따라 페이지 리다이렉트 --%>

<%@ page import="bitc.next502.jsp_20260106.database.BoardDTO" %>
<%@ page import="bitc.next502.jsp_20260106.database.BoardDAO" %>
<%@ page import="bitc.next502.jsp_20260106.util.JSFunction" %>

<%
//  클라이언트에서 전달되는 데이터 문자셋 설정
  request.setCharacterEncoding("UTF-8");

//  클라이언트에서 전달된 데이터 가져오기
  int num = Integer.parseInt(request.getParameter("num"));
  String title = request.getParameter("title");
  String content = request.getParameter("content");

//  가져온 데이터로 BoardDTO 객체 생성
  BoardDTO board = new BoardDTO();
  board.setNum(num);
  board.setTitle(title);
  board.setContent(content);

//  DAO 객체 생성 및 데이터베이스 연결
  BoardDAO dao = new BoardDAO();
  dao.dbOpen();

//  DAO 에서 제공하는 데이터 수정 메소드 호출
  int result = dao.updateBoard(board);

//  데이터베이스 연결 종료
  dao.dbClose();

  if (result > 0) {
//    성공 시 list.jsp 혹은 view.jsp 로 이동
    JSFunction.alertLocation("수정되었습니다", "./list.jsp", out);
  }
  else {
//    실패 시 edit.jsp 로 이동, 뒤로가기
    JSFunction.alertBack("수정에 실패했습니다.", out);
  }
%>

















