<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 5.
  Time: 오후 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  DTO, DAO 를 이용하여 로그인 처리를 하는 페이지 --%>

<%--  MemberDTO, MemberDAO 클래스 import --%>
<%@ page import="bitc.next502.jsp_20260105.MemberDTO" %>
<%@ page import="bitc.next502.jsp_20260105.MemberDAO" %>

<%
  request.setCharacterEncoding("UTF-8");

//  클라이언트에서 전달한 데이터 가져오기
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");

//  MemberDAO 타입의 객체 생성
  MemberDAO dao = new MemberDAO();
//  데이터베이스 연결
  dao.dbOpen();

//  지정한 id/pw 를 사용하는 사용자가 있는지 확인
  boolean result = dao.isMember(userId, userPw);

  if (result == true) {
//    사용자가 있을 경우, MemberDAO 에서 제공하는 selectMember() 메소드를 통해서 사용자 정보 가져오기
    MemberDTO member = dao.selectMember(userId);

//    세션 영역에 가져온 사용자 정보를 저장
    session.setAttribute("userId", member.getId());
    session.setAttribute("userName", member.getName());
    session.setAttribute("regiDate", member.getRegidate());
    session.setMaxInactiveInterval(60 * 5);

//    데이터베이스 연결 종료
    dao.dbClose();
    response.sendRedirect("loginOK.jsp"); // 로그인 성공 페이지로 이동
  }
  else {
    dao.dbClose();
    response.sendRedirect("loginFail.jsp"); // 로그인 실패 페이지로 이동
  }
%>















