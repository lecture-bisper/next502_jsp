<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>jdbc 접속 테스트 1</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<%@ include file="dbConn.jsp" %>

<div class="container mt-5">
  <h3>기존 JSP 파일을 통해서 DB 접속하기</h3>

  <%
//    Statement : 데이터베이스에 접속하여 SQL 쿼리문을 실행하는 클래스
//    ResultSet : SQL 쿼리문 중 SELECT 문 실행 후 그 결과를 받아와서 저장하는 클래스
    Statement stmt = null;
    ResultSet rs = null;

    try {
//      데이터 조회를 위한 SQL 문 생성
      String sql = "SELECT * FROM board ";

//      Connection 객체를 사용하여 SQL 문 실행을 위한 Statement 클래스 타입의 객체 생성
      stmt = conn.createStatement();
//      Statement 타입의 객체를 사용하여 SQL 문을 실행하고 그 결과를 ResultSet 클래스 타입의 객체로 받아옴
      rs = stmt.executeQuery(sql);

//      ResultSet 객체에 저장된 데이터가 있는지 확인 후 하나씩 출력
      while (rs.next()) {
        out.println("<hr>");
        out.println("글번호 : " + rs.getInt("num"));
        out.println("글제목 : " + rs.getString("title"));
        out.println("글내용 : " + rs.getString("content"));
        out.println("작성일 : " + rs.getString("postdate"));
      }
    }
    catch (SQLException e) {
      out.println("데이터 조회 중 오류가 발생했습니다.<br>");
      out.println("SQLException : " + e.getMessage());
    }
    finally {
//      데이터베이스 사용 후 접속 종료
//      데이터베이스 사용의 반대 순서로 리소스를 해제해야 함, ResultSet -> Statement -> Connection 순서
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (conn != null) { conn.close(); }
    }
  %>
</div>

</body>
</html>















