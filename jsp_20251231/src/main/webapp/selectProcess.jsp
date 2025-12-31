<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오후 2:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  데이터베이스 사용을 위해 필요한 클래스 import --%>
<%@ page import="java.sql.*" %>

<%--  커넥션 풀을 사용하기 위한 클래스 import--%>
<%@ page import="bitc.next502.jsp_20251231.DBConnPool" %>

<%
//  request 내장 객체를 통해서 전달되는 데이터의 문자셋을 UTF-8 방식으로 변환
  request.setCharacterEncoding("UTF-8");

//  클라이언트에서 전달한 데이터 가져오기
  String userId = request.getParameter("userId");

//  커넥션 풀을 사용하여 데이터베이스 연결
  DBConnPool db = new DBConnPool();
  String msg = ""; // 검색 결과를 출력할 변수

  try {
//    SELECT 문을 생성
//    길이가 긴 SQL 쿼리문 입력 시 문자열 연결 연산자를 사용하여 SQL 문을 완성
//    쿼리문의 가장 앞이나 가장 뒤에 공백 기호를 추가하는 것을 추천
    String sql = "SELECT id, name, regidate FROM member ";
    sql += "WHERE id = '" + userId + "' ";

    db.stmt = db.conn.createStatement();
//    executeQuery() : Statement 객체를 사용하여 SELECT 쿼리문을 데이터베이스에 전달하여 실행하는 명령
//    반환값은 ResultSet 타입으로 반환받음
    db.rs = db.stmt.executeQuery(sql);
//    ResultSet : SELECT 문 실행 후 출력되는 결과를 저장하는 클래스
//    ResultSet의 메소드
//    next() : 데이터가 저장된 ResultSet 객체에서 출력할 데이터가 있는지 확인하는 명령어
//      데이터가 있을 경우 데이터를 가져오고 true 를 반환
//      데이터가 없으면 false 를 반환
//    getString() : ResultSet 클래스에서 제공하는 데이터 출력 명령어, String 타입으로 출력
//    getInt() : ResultSet 클래스에서 제공하는 데이터 출력 명령어, int 타입으로 출력
//    getXXX() : ResultSet 클래스에서 제공하는 데이터 출력 명령어, 모든 데이터 타입의 메소드가 존재함
//      매개변수로 컬럼명이나 순서 번호를 입력하여 해당 컬럼의 데이터를 출력함
//      순서 번호는 입력한 SELECT 문의 컬럼명 순서임 (1 부터 시작)


    while (db.rs.next()) {
      String name = db.rs.getString("name");
      String id = db.rs.getString("id");
      String regiDate = db.rs.getString(3);

      msg += "ID : " + id + "<br>이름 : " + name + "<br>등록시간 : " + regiDate;
    }
  }
  catch (SQLException e) {
    msg = "사용자 오류가 발생했습니다.<br>";
    msg += "SQLException : " + e.getMessage();
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
  <h3 class="text-center">Statement 로 데이터 조회하기</h3>

  <div class="mt-3">
    <p><%=msg%></p>
  </div>
</div>
</body>
</html>















