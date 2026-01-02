<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 2.
  Time: 오후 1:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@ page import="bitc.next502.jsp_20260102.DBConnPool" %>

<%--  여러개의 데이터를 한번에 입력 --%>
<%
//  입력 시 사용할 더미 데이터
  List<Map<String, String>> dataList = new ArrayList<>();

  for (int i = 11; i <= 20; i++) {
    Map<String, String> user = new HashMap<>();
    user.put("id", "test" + i);
    user.put("pass", "1234");
    user.put("name", "테스터" + i);

    dataList.add(user);
  }
%>

<%--  Statement 를 사용하여 여러개의 데이터를 한번에 입력 --%>
<%--<%--%>
<%--  DBConnPool db = new DBConnPool();--%>

<%--  try {--%>
<%--//    for문을 이용하여 Statement 객체를 10 번 생성--%>
<%--//    실제 데이터베이스의 성능이 떨어지게 됨--%>
<%--    for (int i = 0; i < dataList.size(); i++) {--%>
<%--      db.stmt = null;--%>
<%--//      ArrayList 에 있는 HashMap 타입의 데이터를 하나씩 출력--%>
<%--      Map<String, String> userInfo = dataList.get(i);--%>

<%--//      INSERT 문 생성--%>
<%--      String sql = "INSERT INTO member (id, pass, name, regidate) ";--%>
<%--      sql += "VALUES ('" + userInfo.get("id") + "', '" + userInfo.get("pass") + "', '" + userInfo.get("name") + "', now()) ";--%>

<%--//      Connection 객체를 이용하여 Statement 객체를 새로 생성--%>
<%--      db.stmt = db.conn.createStatement();--%>
<%--      db.stmt.executeUpdate(sql);--%>
<%--//      Statement 객체를 리소스 해제--%>
<%--      db.stmt.close();--%>
<%--    }--%>
<%--  }--%>
<%--  catch (SQLException e) {--%>
<%--  }--%>
<%--  finally {--%>
<%--    db.close();--%>
<%--  }--%>
<%--%>--%>

<%--  PreparedStatement 를 이용하여 여러개의 데이터를 한번에 입력(1 번 방식) --%>
<%--<%--%>
<%--  DBConnPool db = new DBConnPool();--%>

<%--  try {--%>
<%--//    위의 Statement 방식과 동일하기 때문에 데이터베이스의 성능이 떨어짐--%>
<%--    for (int i = 0; i < dataList.size(); i++) {--%>
<%--      db.pstmt = null;--%>
<%--      Map<String, String> userInfo = dataList.get(i);--%>

<%--      String sql = "INSERT INTO member (id, pass, name, regidate) ";--%>
<%--      sql += "VALUES (?, ?, ?, now()) ";--%>

<%--//      Connection 을 이용하여 PreparedStatement 객체를 새로 생성--%>
<%--      db.pstmt = db.conn.prepareStatement(sql);--%>
<%--      db.pstmt.setString(1, userInfo.get("id"));--%>
<%--      db.pstmt.setString(2, userInfo.get("pass"));--%>
<%--      db.pstmt.setString(3, userInfo.get("name"));--%>

<%--      db.pstmt.executeUpdate();--%>
<%--//      PreparedStatement 객체의 리소스를 해제--%>
<%--      db.pstmt.close();--%>
<%--    }--%>
<%--  }--%>
<%--  catch (SQLException e) {--%>
<%--    e.printStackTrace();--%>
<%--  }--%>
<%--  finally {--%>
<%--    db.close();--%>
<%--  }--%>
<%--%>--%>


<%--  PreparedStatement 를 이용하여 여러개의 데이터를 한번에 입력(2 번 방식) --%>
<%
  DBConnPool db = new DBConnPool();

  String sql = "INSERT INTO member (id, pass, name, regidate) ";
  sql += "VALUES (?, ?, ?, now()) ";

  try {
//    Connection 를 이용하여 PreparedStatement 객체를 1번만 생성
//    PreparedStatement 객체가 1번만 생성되고 계속 재활용 되기 때문에 데이터베이스의 성능이 좋아짐
    db.pstmt = db.conn.prepareStatement(sql);

//    for (int i = 0; i < dataList.size(); i++) {
//      Map<String, String> userInfo = dataList.get(i);
//
////      sql 의 ? 부분에 데이터 추가
//      db.pstmt.setString(1, userInfo.get("id"));
//      db.pstmt.setString(2, userInfo.get("pass"));
//      db.pstmt.setString(3, userInfo.get("name"));
//
////      PreparedStatement 를 사용하여 데이터베이스에 SQL 문 전달 및 실행
//      db.pstmt.executeUpdate();
////      setXXX() 메소드를 사용하여 ? 에 입력된 데이터를 모두 삭제
//      db.pstmt.clearParameters();
//    }

//    clearParameters() : PreparedStatement 를 사용하여 여러 번 데이터를 수정 입력 시 setXXX() 메소드를 사용 ? 에 입력한 데이터를 모두 삭제
//    addBatch() : PreparedStatement 를 사용하여 여러번 데이터를 수정 입력 시 매번 executeUpdate() 로 SQL문을 전달 및 실행하는 것이 아니라, 메모리 상에 입력된 내용을 저장해 놓고, executeBatch() 메소드 호출 시 한번에 전달 및 실행
//    executeBatch() : addBatch() 메소드를 이용하여 메모리에 저장된 데이터를 한번에 데이터베이스로 전달 및 실행

//    addBatch(), clearParameters() 반복 실행하여 메모리에 데이터를 계속 저장
    for (int i = 0; i < dataList.size(); i++) {
      Map<String, String> userInfo = dataList.get(i);

      db.pstmt.setString(1, userInfo.get("id"));
      db.pstmt.setString(2, userInfo.get("pass"));
      db.pstmt.setString(3, userInfo.get("name"));

      db.pstmt.addBatch();
      db.pstmt.clearParameters();
    }

//    addBatch() 를 사용하여 메모리에 저장된 모든 내용을 한번에 전달 및 실행
    db.pstmt.executeBatch();
  }
  catch (SQLException e) {
    out.println(e.getMessage());
  }
  finally {
    db.close();
  }
%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>PreparedStatement 로 SQL문을 여러번 실행하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>


</body>
</html>















