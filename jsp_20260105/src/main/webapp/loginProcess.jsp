<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 26. 1. 5.
  Time: 오전 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  로그인 처리를 위한 페이지, 내부 처리만 하기 때문에 UI 없음 --%>

<%--  데이터베이스 사용을 위해서 필요한 클래스 import --%>
<%@ page import="java.sql.*" %>

<%
//  클라이언트에서 전달된 데이터의 문자셋 설정
  request.setCharacterEncoding("UTF-8");

//  클라이언트에서 전달한 데이터를 request 객체에서 가져오기
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");

//  데이터베이스에 연결하기 위한 Connection 클래스 타입 변수
  Connection conn = null;
//  SQL 문을 데이터베이스에 전달 및 실행하기 위한 PreparedStatement 클래스 타입 변수 선언
  PreparedStatement pstmt = null;
//  SELECT 문 실행 후 결과를 받아오기 위한 ResultSet 클래스 타입의 변수 선언
  ResultSet rs = null;

//  데이터베이스 연결 정보
  String dbDriver = "com.mysql.cj.jdbc.Driver";
  String dbUrl = "jdbc:mysql://localhost:3306/next502db?characterEncoding=UTF-8&serverTimezone=UTC";
  String dbUser = "test1";
  String dbPass = "next502";

//  mysql 드라이버 로딩
  Class.forName(dbDriver);
//  DB 서버 URL, 사용자 정보를 이용하여 DB 에 연결
  conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

  try {
//    지정한 id/pw 를 사용하는 사용자가 있는지 확인하는 SQL 문 생성
    String sql = "SELECT count(*) AS cnt FROM member ";
    sql += "WHERE id = ? ";
    sql += "AND pass = ? ";

//    Connection 을 이용하여 PreparedStatement 객체 생성, 매개변수로 sql 문 사용
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, userId); // 클라이언트에서 받아온 userId 입력
    pstmt.setString(2, userPw); // 클라이언트에서 받아온 userPw 입력

//    완성된 SQL 문 실행, 결과값을 ResultSet 타입으로 받아옴
    rs = pstmt.executeQuery();

//    가져온 데이터가 있을 경우 반복문으로 데이터가 없을때까지 반복
    while (rs.next()) {
//      지정한 컬럼명으로 데이터 가져옴
      int count = rs.getInt("cnt");

//      가져온 데이터가 1 이면 사용자 정보 있음, 1 이 아니면 사용자 정보 없음 혹은 오류
      if (count == 1) {
//        사용자 정보가 있을 경우, 지정한 사용자의 정보를 가져오는 SQL 문 생성
        sql = "SELECT id, name, regidate FROM member ";
        sql += "WHERE id = ? ";

//        SQL 문이 변경되었으므로 PreparedStatement 객체 새로 생성
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userId); // ? 기호에 사용자 ID 정보로 설정

        ResultSet result = pstmt.executeQuery();

//        어짜피 출력될 결과가 1개 이므로 while 문 대신 if 문 사용
        if (result.next()) {
//          지정한 사용자 정보가 있을 경우
//          세션 영역에 사용자 정보 저장
          session.setAttribute("userId", result.getString("id"));
          session.setAttribute("userName", result.getString("name"));
          session.setAttribute("regiDate", result.getString("regidate"));
          session.setMaxInactiveInterval(60 * 3); // 세션 유지 시간 설정

//          로그인 성공 페이지로 이동, 세션에 데이터가 저장되어 있으므로 페이지 이동 시에도 데이터가 유지
          response.sendRedirect("loginOK.jsp");
        }
        else {
//          사용자 정보가 없을 경우, 로그인 실패 페이지로 이동
          response.sendRedirect("loginFail.jsp");
        }
      }
      else {
//        사용자 정보가 없으면 로그인 실패 페이지로 이동
        response.sendRedirect("loginFail.jsp");
      }
    }
  }
  catch (SQLException e) {
    out.println("데이터베이스 사용 중 오류가 발생했습니다.<br>");
    out.println("SQLException : " + e.getMessage());
  }
  finally {
    if (rs != null) { rs.close(); }
    if (pstmt != null) { pstmt.close(); }
    if (conn != null) { conn.close(); }
  }



////  DB 연결없이 로그인 처리
//
////  클라이언트에서 전달한 사용자 ID와 비밀번호가 서버의 내용과 일치하는지 확인
//  if (userId.equals("test1") && userPw.equals("1234")) {
////    로그인 성공 시
////    세션 영역에 데이터 저장
//    session.setAttribute("userId", userId);
//    session.setAttribute("userName", "테스터1");
////    세션이 유지될 시간 설정
//    session.setMaxInactiveInterval(60 * 3);
//
////    로그인 성공 시 이동할 페이지
//    response.sendRedirect("loginOK.jsp");
//  }
//  else {
////    로그인 실패 시
//    response.sendRedirect("loginFail.jsp");
//  }
%>














