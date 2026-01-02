<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 2.
  Time: 오전 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  데이터베이스 사용을 위해서 필요한 클래스 import --%>
<%@ page import="java.sql.*" %>

<%--  커넥션 풀을 사용하여 DB 에 연결하기 위한 클래스 import --%>
<%@ page import="bitc.next502.jsp_20260102.DBConnPool" %>

<%
//  클라이언트에서 전달받은 데이터의 문자셋을 설정
  request.setCharacterEncoding("UTF-8");

//  클라이언트에서 전달한 데이터 가져오기, 클라이언트에서 서버로 전달되는 데이터는 모두 문자열
  String title = request.getParameter("title");
  String userId = request.getParameter("userId");
  String content = request.getParameter("content");

//  커넥션 풀을 통해서 DB 연결
  DBConnPool db = new DBConnPool();
  String resultMessage = ""; // DB 사용 결과를 저장할 변수

//  DB 는 자바 외부의 리소스이기 때문에 try ~ catch 문 필수
  try {
//    insert 쿼리문 생성
    String sql = "INSERT INTO board (title, content, id, postdate, visitcount) ";
    sql += "VALUES (?, ?, ?, now(), ?) ";

//    PreparedStatement : 하나의 객체로 여러 번의 쿼리를 실행하거나 동일한 쿼리문으로 특정 값만 변경하면서 여러 번의 실행이 필요한 경우, 매개변수의 수가 많을 경우 사용하는 클래스
//    setXXX() 메소드를 사용하여 sql 쿼리문의 ' ? ' 기호에 데이터를 입력하여 사용
//    setXXX() 메소드의 첫번째 매개변수인 index 는 1 부터 시작

//    PreparedStatement 에서 제공하는 setXXX() 메소드
//      setXXX() 메소드는 모든 데이터 타입에 대해서 메소드가 존재함
//    setInt(index, 데이터) : 정수 데이터를 입력
//    setString(index, 데이터) : 문자열 데이터를 입력
//    setDouble(index, 데이터) : 실수 데이터를 입력
//    setDate(index, 데이터) : 날짜 데이터를 입력
//    setTimestamp(index, 데이터) : 시간 데이터를 입력
//    setObject(index, 데이터) : 객체 데이터를 입력

//    PreparedStatement 는 Statement 와 달리 Connection 으로 객체 생성 시 SQL 쿼리문을 함께 입력, ' ? ' 부분에 setXXX() 메소드를 사용하여 데이터를 나중에 입력
    db.pstmt = db.conn.prepareStatement(sql);
    db.pstmt.setString(1, title);
    db.pstmt.setString(2, content);
    db.pstmt.setString(3, userId);
    db.pstmt.setInt(4, 0);

//    executeUpdate() : PreparedStatement 에서도 동일하게 insert, update, delete 시 사용, 매개변수가 없음
//    executeQuery() : PreparedStatement 에서도 동일하게 select 시 사용, 매개변수가 없음
    int result = db.pstmt.executeUpdate();

    if (result > 0) {
      resultMessage = "PreparedStatement 로 " + result + "개의 항목을 입력했습니다.";
    }
    else {
      resultMessage = "PreparedStatement 로 데이터 추가된 데이터가 없습니다.";
    }
  }
  catch (SQLException e) {
    resultMessage = "PreparedStatement 로 데이터 추가 중 오류가 발생했습니다.<br>";
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
  <title>PreparedStatement 로 데이터 추가하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h3 class="text-center">PreparedStatement 로 데이터 추가 결과</h3>

  <p class="text-center"><%=resultMessage%></p>
</div>

</body>
</html>

<%--  문제 1) insert.jsp, insertProcess.jsp 파일을 참고하여 update, delete 기능을 구현하세요 --%>
<%--  파일명 : update.jsp, updateProcess.jsp, delete.jsp, deleteProcess.jsp --%>













