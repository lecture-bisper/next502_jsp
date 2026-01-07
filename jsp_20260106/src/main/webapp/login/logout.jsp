<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오전 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="bitc.next502.jsp_20260106.util.JSFunction" %>

<%--  1. 지정한 세션 정보 삭제 --%>
<%--  2. 모든 세션 정보 삭제 --%>
<%--  3. 로그아웃 메시지 출력 후 list.jsp 로 리다이렉트 --%>

<%
//  지정한 세션 정보 삭제
  session.removeAttribute("userId");
  session.removeAttribute("userName");

//  모든 세션 정보 삭제
  session.invalidate();

//  out.println("<script>");
//  out.println("alert('로그아웃 되었습니다.');");
//  out.println("location.href = '../board/list.jsp';");
//  out.println("</script>");

//  JSFunction 에서 제공하는 정적메소드를 사용하여 알림 메시지 출력 및 페이지 이동
  JSFunction.alertLocation("로그아웃 되었습니다.", "../board/list.jsp", out);
%>















