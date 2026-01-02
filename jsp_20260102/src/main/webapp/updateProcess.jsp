<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 2.
  Time: 오후 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>
<%@ page import="bitc.next502.jsp_20260102.DBConnPool" %>

<%
//  1. 클라이언트에서 전달받은 데이터 가져오기
//  2. 데이터베이스 연결
//  3. try ~ catch 문 사용 및 update 쿼리문 생성
//  4. PreparedStatement 객체 생성 및 ? 에 데이터 입력
//  5. 데이터베이스에 쿼리문 전달 및 실행 후 결과 받아오기
//  6. 결과에 따라서 출력 내용 설정
  request.setCharacterEncoding("UTF-8");

  int num = Integer.parseInt(request.getParameter("num"));
  String title = request.getParameter("title");
  String content = request.getParameter("content");

  DBConnPool db = new DBConnPool();
  String resultMessage = ""; // DB 사용 결과를 저장할 변수

  try {
    String sql = "UPDATE board ";
    sql += "SET title = ?, content = ?, postdate = now() ";
    sql += "WHERE num = ? ";

    db.pstmt = db.conn.prepareStatement(sql);
    db.pstmt.setString(1, title);
    db.pstmt.setString(2, content);
    db.pstmt.setInt(3, num);

    int result = db.pstmt.executeUpdate();

    if (result > 0) {
      resultMessage = "PreparedStatement 로 " + result + "개의 항목을 수정했습니다.";
    }
    else {
      resultMessage = "PreparedStatement 로 데이터 수정된 데이터가 없습니다.";
    }
  }
  catch (SQLException e) {
    resultMessage = "PreparedStatement 로 데이터 수정 중 오류가 발생했습니다.<br>";
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
  <h3 class="text-center">PreparedStatement 로 데이터 수정하기</h3>

  <p class="text-center"><%=resultMessage%></p>
</div>

</body>
</html>















