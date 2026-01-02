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
  request.setCharacterEncoding("UTF-8");

//  클라이언트에서 전달한 삭제할 글 번호 가져오기, 전달된 데이터는 모두 문자열
//  parseInt() 를 사용하여 전달받은 데이터를 정수로 변환
  int num = Integer.parseInt(request.getParameter("num"));

//  DB 연결
  DBConnPool db = new DBConnPool();
  String resultMessage = ""; // DB 사용 결과를 저장할 변수

  try {
//    delete 쿼리 생성
    String sql = "DELETE FROM board ";
    sql += "WHERE num = ? ";

//
//    PrepareStatement 객체 생성
    db.pstmt = db.conn.prepareStatement(sql);
//    ? 부분에 데이터 추가
    db.pstmt.setInt(1, num);

//    DB로 SQL 문 전달 및 실행
    int result = db.pstmt.executeUpdate();

    if (result > 0) {
      resultMessage = "PreparedStatement 로 " + result + "개의 항목을 삭제했습니다.";
    }
    else {
      resultMessage = "PreparedStatement 로 데이터 삭제된 데이터가 없습니다.";
    }
  }
  catch (SQLException e) {
    resultMessage = "PreparedStatement 로 데이터 삭제 중 오류가 발생했습니다.<br>";
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
  <h3 class="text-center">PreparedStatement 로 데이터 삭제하기</h3>

  <p class="text-center"><%=resultMessage%></p>
</div>

</body>
</html>















