<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 24.
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
  String str1 = "JSP";
  String str2 = "안녕하세요";
%>

<html>
<head>
  <meta charset="UTF-8">
  <title>Hello JSP</title>
</head>
<body>
<h2>처음 만들어보는 <%=str1%></h2>
<p>
  <%
    out.println(str2 + str1 + "입니다. 열공합시다");
  %>
</p>
</body>
</html>















