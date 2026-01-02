<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 2.
  Time: 오전 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<%@ page import="bitc.next502.jsp_20260102.DBConnPool" %>

<%
  request.setCharacterEncoding("UTF-8");

  String userId = request.getParameter("userId");

  DBConnPool db = new DBConnPool();
  String resultMessage = "";

  try {
    String sql = "SELECT id, name, regidate FROM member ";
    sql += "WHERE id = ? ";

    db.pstmt = db.conn.prepareStatement(sql);
    db.pstmt.setString(1, userId);

    db.rs = db.pstmt.executeQuery();

    while (db.rs.next()) {
      String id = db.rs.getString("id");
      String name = db.rs.getString("name");
      String regiDate = db.rs.getString("regidate");

      resultMessage += "사용자ID : " + id + ", 사용자명 : " + name + ", 등록일 : " + regiDate;
    }

  }
  catch (SQLException e) {
    resultMessage = "사용자 조회 중 오류가 발생했습니다.<br>";
    resultMessage += "SQLException : " + e.getMessage();
  }
  finally {
    db.close();
  }
%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>Title</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h3>PreparedStatement 로 조회하기 결과</h3>

  <p><%= resultMessage %></p>
</div>

</body>
</html>















