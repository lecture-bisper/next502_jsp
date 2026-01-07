<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오전 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  1. 데이터베이스 사용을 위한 클래스 import --%>
<%--    사용자 테이블에 관련된 DTO, DAO 클래스 생성--%>
<%--  2. 클라이언트에서 전달받은 데이터 가져오기 --%>
<%--  3. 데이터베이스 연결 --%>
<%--  4. 클라이언트에서 전달받은 데이터를 사용하는 사용자가 데이터베이스 안에 있는지 확인 --%>
<%--  5. 사용자가 있으면 사용자 정보를 데이터베이스에서 가져오기 --%>
<%--  6. 세션에 사용자 정보를 추가 --%>
<%--  7. 데이터베이스 연결 종료 --%>
<%--  8. list.jsp 화면으로 리다이렉트 --%>
<%--  9. 사용자가 없으면 사용자가 없다는 메시지 출력 후 로그인 화면으로 이동, 뒤로가기 --%>

<%@ page import="bitc.next502.jsp_20260106.database.MemberDTO" %>
<%@ page import="bitc.next502.jsp_20260106.database.MemberDAO" %>
<%@ page import="bitc.next502.jsp_20260106.util.JSFunction" %>

<%
//  클리언트에서 전달한 데이터 가져오기
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");

//  MemberDAO 객체 생성 및 데이터베이스 연결
  MemberDAO dao = new MemberDAO();
  dao.dbOpen();

//  dao 에서 제공하는 사용자 존재 유무 확인 메소드 호출
  int result = dao.isMember(userId, userPw);

//  결과값이 1 이면 사용자가 있음, 1 이 아니면 사용자가 없음
  if (result == 1) {
//    입력받은 데이터와 일치하는 사용자가 있을 경우
//    해당 사용자의 정보를 다시 가져옴
    MemberDTO member = dao.selectMember(userId);

//    사용자의 정보를 세션에 저장
    session.setAttribute("userId", member.getId());
    session.setAttribute("userName", member.getName());
    session.setMaxInactiveInterval(60 * 10); // 세션 유지시간 설정

//    데이터베이스 연결 종료
    dao.dbClose();
//    로그인 알림 메시지 출력 후 페이지 이동
    JSFunction.alertLocation("로그인 되었습니다.", "../board/list.jsp", out);
  }
  else {
//    입력받은 데이터와 일치하는 사용자가 없을 경우
//    데이터베이스 연결 종료
    dao.dbClose();
//    메시지 출력 후 뒤로가기(login.jsp 로 이동)
    JSFunction.alertBack("입력한 사용자 정보가 없습니다.", out);
  }
%>















