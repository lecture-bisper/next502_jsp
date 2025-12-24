<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오후 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  page 지시어의 import 를 사용하여 자바 클래스를 가져옴 --%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.LocalDate" %>

<%--  스크립틀릿 --%>
<%
  LocalDate today = LocalDate.now();
  LocalDateTime tomorrow = LocalDateTime.now().plusDays(1);
%>











