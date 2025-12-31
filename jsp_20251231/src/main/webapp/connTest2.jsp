<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  데이터베이스 관련 클래스 import --%>
<%@ page import="java.sql.*" %>

<%--  JDBC 를 이용하여 데이터베이스에 접속하기 위한 클래스를 import --%>
<%@ page import="bitc.next502.jsp_20251231.JDBConnect" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>Java class 를 이용한 DB 접속</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h3>Java Class 를 이용하여 DB 연결</h3>

  <%
//    import 한 JDBConnect 클래스 타입의 객체 생성
//    기본 생성자 사용
    JDBConnect jdbConn = new JDBConnect();

//    데이터베이스로 SQL쿼리문을 전달하여 실행
    try {
//      SELECT 쿼리문 생성
      String sql = "SELECT * FROM board ";

//      JDBConnect 클래스 타입으로 생성된 객체의 멤버를 사용
//      Connection 객체를 이용하여 Statement 객체 생성
      jdbConn.stmt = jdbConn.conn.createStatement();
//      Statement 객체를 이용하여 SQL 문을 데이터베이스 전달하여 실행 후 결과를 받아옴
      jdbConn.rs = jdbConn.stmt.executeQuery(sql);

      while (jdbConn.rs.next()) {
        out.println("<p>" + jdbConn.rs.getString("title") + "</p>");
      }
    }
    catch (SQLException e) {
      out.println("데이터 조회 중 오류가 발생했습니다.<br>");
      out.println("SQLException : " + e.getMessage());
    }
    finally {
      jdbConn.close();
    }
  %>
</div>

</body>
</html>















