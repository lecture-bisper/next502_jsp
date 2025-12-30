<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 30.
  Time: 오후 3:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  데이터베이스 사용을 위한 클래스를 모두 import --%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <title>jdbc mysql 연결 테스트</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>
</head>
<body>

<%
//  java.sql 패키지에서 제공하는 데이터베이스 접속 진행을 위한 클래스
  Connection conn = null;

//  데이터베이스 접속은 외부 리소스를 사용하는 것이므로 반드시 try ~ catch 로 예외처리를 해야 함
  try {
//    데이터베이스 서버 접속 주소 설정
//    jdbc : 데이터베이스 접속 시 사용하는 커넥터 종류, 자바에서는 jdbc
//    mysql : 사용할 데이터베이스 종류, mysql, oracle
//    //localhost:3306 : 데이터베이스 서버 주소 및 포트 번호
//    port : 네트워크 사용 시 IP 번호가 1개 주어지기 때문에 효과적으로 사용할 수 없음, 네트워크 자원을 port 라는 것으로 나누어서 동시에 여러가지 네트워크를 사용할 수 있도록 함
//      1 ~ 65535 번까지 존재함, 1 ~ 1000 번까지는 OS 내부적으로 사용한 것이 많기 때문에 1000 번 이후 번호를 사용하는 것이 좋음
//    /next502db : 사용자가 사용하고자 하는 데이터베이스명
//    ? 뒤에 있는 부분은 mysql 접속을 위한 옵션
    String url = "jdbc:mysql://localhost:3306/next502db?characterEncoding=UTF-8&serverTimezone=UTC";
    String userId = "test1"; // 데이터베이스 사용자 id
    String userPw = "next502"; // 데이터베이스 사용자 pw

//    com.mysql.cj.jdbc.Driver : 최신 버전의 mysql 드라이버명 (구버전 : com.mysql.jdbc.Driver)
//    jdbc 드라이버 로딩
    Class.forName("com.mysql.cj.jdbc.Driver");
//    getConnection() : 지정한 URL 과 사용자 ID/PW 를 사용하여 실제로 데이터베이스 접속
    conn = DriverManager.getConnection(url, userId, userPw);
    out.print("데이터베이스 연결이 성공했습니다.");
  } catch (SQLException e) {
    out.print("데이터베이스 연결이 실패했습니다.<br>");
    out.print("SQLException : " + e.getMessage());
  }
//  데이터베이스는 외부 리소스이기 때문에 finally 를 사용하여 반드시 리소스를 해제해야 함
  finally {
//    Connection 클래스 타입의 변수 conn 이 null 이 아닐 경우는 데이터베이스에 접속했다는 의미
//    conn 이 null 일 경우는 데이터베이스 접속하지 않았다는 의미
    if (conn != null) {
//      데이터베이스 접속 끊기, 리소스 해제
      conn.close();
    }
  }
%>

</body>
</html>















