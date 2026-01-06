<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 6.
  Time: 오후 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
  String pageName = request.getRequestURI(); // 전체 URL 에서 서버 주소를 제외한 주소 가져오기
  pageName = pageName.substring(7, pageName.indexOf(".jsp")); // 가져온 주소에서 '.jsp' 앞의 문자열만 가져오기

  switch (pageName) {
    case "list":
      pageName = "목록";
      break;

    case "view":
      pageName = "상세";
      break;

    case "write":
      pageName = "등록";
      break;

    case "edit":
      pageName = "수정";
      break;
  }
%>

<header>
  <div class="container mt-4 p-5 bg-secondary-subtle rounded rounded-3">
    <h1 class="text-center my-3">게시판 <%=pageName%> 페이지</h1>
  </div>
</header>















