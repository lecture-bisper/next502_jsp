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
<%--  4. DAO 에서 제공하는 데이터 삭제 메소드 호출, 매개변수로 글번호 사용 --%>
<%--  5. 데이터베이스 연결 종료 --%>
<%--  6. 삭제 결과에 따라 리다이렉트 --%>

<%@ page import="bitc.next502.jsp_20260106.database.BoardDAO" %>

<%
//  클라이언트에서 전달받은 데이터 가져오기, 문자열을 int 타입으로 변환
  int num = Integer.parseInt(request.getParameter("num"));

//  BoardDAO 객체 생성 및 데이터베이스 연결
  BoardDAO dao = new BoardDAO();
  dao.dbOpen();

//  DAO 에서 제공하는 데이터 삭제 메소드 호출
  int result = dao.deleteBoard(num);

//  데이터베이스 연결 종료
  dao.dbClose();

//  결과값에 따라 각각의 페이지로 리다이렉트
  if (result > 0) {
//    list.jsp 로 이동
    out.println("<script>");
    out.println("alert('삭제되었습니다.');");
    out.println("location.href = './list.jsp';");
    out.println("</script>");
  }
  else {
//    뒤로 가기
    out.println("<script>");
    out.println("alert('삭제에 실패했습니다.');");
    out.println("history.back();");
    out.println("</script>");
  }
%>
















