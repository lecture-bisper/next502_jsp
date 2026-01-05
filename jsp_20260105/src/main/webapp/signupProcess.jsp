<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 5.
  Time: 오후 2:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  회원 가입 처리 페이지 --%>
<%--  DAO, DTO 를 이용하여 사용자 추가 --%>
<%@ page import="bitc.next502.jsp_20260105.MemberDTO" %>
<%@ page import="bitc.next502.jsp_20260105.MemberDAO" %>

<%--  1. 클라이언트에서 전달한 데이터 가져오기 --%>
<%--  2. DAO 타입의 객체 생성 --%>
<%--  3. DAO 를 이용하여 DB 연결(DAO에서 제공하는 메소드 실행) --%>
<%--  4. 클라이언트에서 전달받은 데이터를 DTO 타입의 객체에 저장 --%>
<%--  5. DAO 를 이용하여 회원 가입(DAO에서 제공하는 메소드 실행, 매개변수로 DTO 객체 사용) --%>
<%--  6. DAO 를 이용하여 DB 연결 종료 --%>
<%--  7. 회원 가입 유무에 따라서 페이지 이동 --%>
<%
//  클라이언트에서 전달되는 데이터 문자셋 설정
  request.setCharacterEncoding("UTF-8");

//  클라이언트에서 전달된 데이터 가져오기
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");
  String userName = request.getParameter("userName");

//  DB 를 사용하기 위해서 DAO 클래스 타입의 객체 생성
  MemberDAO dao = new MemberDAO();
  dao.dbOpen();

//  데이터를 전달하기 위한 DTO 클래스 타입의 객체 생성
  MemberDTO member = new MemberDTO();
//  DTO 객체에 데이터 저장
  member.setId(userId);
  member.setPass(userPw);
  member.setName(userName);

//  DAO 에서 제공하는 메소드로 회원 가입, 회원 가입 결과 받아오기
  int result = dao.signup(member);

//  DB 연결 종료
  dao.dbClose();

//  회원 가입 결과에 따라 페이지 이동
  if (result > 0) {
    response.sendRedirect("signupSuccess.jsp");
  }
  else {
    response.sendRedirect("signupFail.jsp");
  }
%>












