<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오후 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  커넥션 풀을 사용하기 위한 클래스 import --%>
<%@ page import="bitc.next502.jsp_20251231.DBConnPool" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>커넥션 풀을 사용하여 DB 연결</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h3 class="text-center">커넥션 풀 방식으로 DB 연결하기</h3>

  <%
//    커넥션 풀을 사용하기 위한 DBConnPool 클래스 타입의 객체 생성
    DBConnPool pool = new DBConnPool();

    try {
      String sql = "SELECT * FROM board ";

      pool.stmt = pool.conn.createStatement();
      pool.rs = pool.stmt.executeQuery(sql);

      while (pool.rs.next()) {
        out.println("<p>글제목 : " + pool.rs.getString("title") + "</p>");
      }
    }
    catch (SQLException e) {
      out.println("데이터 조회 중 오류가 발생했습니다.<br>");
      out.println("SQLException : " + e.getMessage());
    }
    finally {
//      커네션 풀의 사용한 DB 접속을 종료 (커넥션 풀을 반납)
      pool.close();
    }
  %>
</div>
</body>
</html>















