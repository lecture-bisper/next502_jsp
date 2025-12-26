<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 26.
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  자바 빈즈 import --%>
<%@ page import="bitc.next502.jsp_20251226.Person" %>

<h4>include 페이지</h4>

<%
//  getAttribute() 를 사용하여 page 영역에 저장된 데이터 가져오기
  int pInt2 = (int)(pageContext.getAttribute("pageInteger"));
  String pString2 = pageContext.getAttribute("pageString").toString();
  Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>

<ul class="list-group">
  <li class="list-group-item">Integer 객체 : <%= pInt2 %></li>
  <li class="list-group-item">String 객체 : <%= pageContext.getAttribute("pageString") %></li>
  <li class="list-group-item">Person 객체 : <%= pPerson2.getName() %>, <%=pPerson2.getAge() %></li>
</ul>









