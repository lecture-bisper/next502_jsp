<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오후 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<%@ page import="bitc.next502.jsp_20251231.DBConnPool" %>

<%
//  클라이언트에서 전달받은 데이터의 문자셋을 UTF-8 로 변경
  request.setCharacterEncoding("UTF-8");

//  getParameter() 를 사용하여 클라이언트에서 전달된 데이터 가져오기
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");
  String userName = request.getParameter("userName");

  String resultMessage = "";

//  커넥션 풀을 사용하여 데이터베이스에 연결
  DBConnPool db = new DBConnPool();

  try {
//    insert 를 위한 SQL문 생성
//    주의사항
//    1. 사용자가 쿼리문을 알아보기 쉽도록 여러 줄로 입력하는 것을 권장
//    2. 쿼리문을 여러 줄로 입력 시 한 라인의 마지막에 공백 기호 추가를 권장
//    3. Statement 객체 사용 시 문자열은 '' 로 감싸야 하므로 변수 연결 시 '' 필수로 사용
    String sql = "INSERT INTO member (id, pass, name, regidate) ";
    sql += "VALUES ('" + userId + "', '" + userPw + "', '" + userName + "', now()) ";

//    Statement : 데이터베이스 서버로 SQL 쿼리문을 전달하는 클래스
//    정적인 쿼리문 혹은 간단한 쿼리문을 실행할 경우 사용
//    하나의 쿼리문을 사용 시 더 이상 사용할 수 없음
//    쿼리문 실행 후 close() 를 사용하여 Statement 객체를 해제해야 함

//    executeUpdate() : insert, update, delete 문을 실행 시 사용하는 명령어, int 타입을 반환
//    close() : Statement 객체를 해제하는 명령어

//    createStatement() : Connection 객체를 통해서 Statement 객체를 생성하는 명령어
    db.stmt = db.conn.createStatement();
    int result = db.stmt.executeUpdate(sql);

    if (result > 0) {
      resultMessage = "회원 가입이 성공했습니다.";
    }
    else {
      resultMessage = "회원 가입에 오류가 있습니다.<br>다시 진행해주세요.";
    }
  }
  catch (SQLException e) {
    resultMessage = "회원 가입에 실패했습니다.<br>";
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
  <title>Statement 로 insert 사용하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h3 class="text-center">Statement 로 insert 진행하기</h3>

  <div>
    <p><%=resultMessage%></p>
  </div>
</div>

</body>
</html>















