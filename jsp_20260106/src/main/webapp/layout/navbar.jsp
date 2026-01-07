<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 7.
  Time: 오후 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  네비게이션바 부분을 파일로 따로 분리 --%>
<nav class="navbar navbar-expand-sm navbar-light bg-light">
  <div class="container-fluid">
    <a href="/board/list.jsp" target="_self" class="navbar-brand">Home</a>
    <div class="d-flex ms-auto">
      <%
//        세션에 저장된 정보가 있으면 가져오고, 없을 경우 null 반환
        String userName = (String)session.getAttribute("userName");

//        세션에 지정된 정보가 있는지 확인, 정보가 있는지 여부에 따라서 UI 를 변경
        if (session.getAttribute("userId") == null) {
      %>
      <a href="/login/login.jsp" target="_self" class="btn btn-outline-success">로그인</a>
      <%
      }
      else {
      %>
      <span class="navbar-text me-3"><%=userName%></span>
      <a href="/login/logout.jsp" target="_self" class="btn btn-outline-secondary">로그아웃</a>
      <%
        }
      %>
    </div>
  </div>
</nav>















