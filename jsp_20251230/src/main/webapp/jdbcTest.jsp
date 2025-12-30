<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 30.
  Time: 오후 4:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>jdbc 로 mysql 에 쿼리 전달하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
<%
  Connection conn = null;
//  Statement : 데이터베이스에 접속하여 sql 쿼리문을 질의하는 클래스
  Statement stmt = null;
//  ResultSet : 2차원 배열 형태로 구성된 데이터베이스 질의 결과를 가져와서 저장하는 클래스
  ResultSet rs = null;

  try {
    String dbUrl = "jdbc:mysql://localhost:3306/next502db?characterEncoding=UTF-8&serverTimezone=UTC";
    String dbUserId = "test1";
    String dbUserPw = "next502";

    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);

    out.print("데이터베이스에 연결되었습니다.<br><br>");

//    데이터베이스 서버로 전달할 SQL 쿼리문 작성
    String sql = "SELECT * FROM board ";

//    데이터베이스 접속 정보를 기반으로 SQL 문을 질의하기 위한 Statement 클래스 타입의 객체 생성
    stmt = conn.createStatement();
//    Statement 클래스 타입의 객체를 사용하여 미리 생성한 SQL 문을 데이터베이스 전달하여 실행
    rs = stmt.executeQuery(sql);

//    ResultSet 클래스 타입의 객체에 저장된 데이터가 있는지 확인
    while (rs.next()) {
      out.print("<hr>");
//      getString(), getInt() : 지정한 컬럼명에 대한 데이터를 출력
      out.print("<p>번호 : " + rs.getInt("num") + "</p>");
      out.print("<p>제목 : " + rs.getString("title") + "</p>");
      out.print("<p>등록일 : " + rs.getString("postdate") + "</p>");
    }
  }
  catch (SQLException e) {
    out.println("데이터베이스 연결이 실패했습니다.<br>");
    out.println("SQLException : " + e.getMessage());
  }
  finally {
//    데이터베이스 사용이 종료된 후 접속 종료
//    데이터베이스 사용 종료 시 접속 순서의 반대로 닫아야 함
//    ResultSet -> Statement -> Connection 순서로 닫아야 함
    if (rs != null) { rs.close(); }
    if (stmt != null) { stmt.close(); }
    if (conn != null) { conn.close(); }
  }
%>
</div>

</body>
</html>















