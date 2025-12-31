<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 31.
  Time: 오전 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  데이터베이스 관련 클래스 import --%>
<%@ page import="java.sql.*" %>

<%
//  데이터베이스 연결을 관리하기 위한 클래스 Connection 타입의 변수 선언
  Connection conn = null;

//  mysql 서버 접속 주소 설정
  String dbUrl = "jdbc:mysql://localhost:3306/next502db?characterEncoding=UTF-8&serverTimezone=UTC";
  String dbUser = "test1"; // 사용자 id
  String dbPass = "next502"; // 사용자 pw

//  mysql 드라이버 로딩
  Class.forName("com.mysql.cj.jdbc.Driver");
//  실제 데이터베이스에 접속 후 연결 정보를 Connection 타입의 변수에 저장
  conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
%>















