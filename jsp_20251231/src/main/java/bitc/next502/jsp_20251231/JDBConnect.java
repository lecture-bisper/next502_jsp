package bitc.next502.jsp_20251231;

import com.mysql.cj.jdbc.JdbcConnection;
import jakarta.servlet.ServletContext;

import java.sql.*;

public class JDBConnect {

//  데이터베이스 접속 정보를 저장하는 클래스
  public Connection conn;
//  데이터베이스에 SQL 문을 전달하여 실행하기 위한 클래스 (단순 쿼리문용)
  public Statement stmt;
//  데이터베이스에 SQL 문을 전달하여 실행하기 위한 클래스 (복잡한 쿼리문용)
  public PreparedStatement pstmt;
//  SELECT 쿼리문의 결과를 데이터베이스에서 받아오는 클래스
  public ResultSet rs;

//  생성자에 DB 접속 정보를 직접 입력한 방식
  public JDBConnect() {
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");

      String dbUrl = "jdbc:mysql://localhost:3306/next502db?characterEncoding=UTF-8&serverTimezone=UTC";
      String dbUser = "test1";
      String dbPass = "next502";

      conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

      System.out.println("DB 연결 성공 (매개변수가 없는 기본 생성자)");
    }
    catch (Exception e) {
      System.out.println("DB 연결 중 오류가 발생했습니다.");
      e.printStackTrace();
    }
  }

//  DB 접속 정보를 매개변수로 전달받아 사용하는 방식
  public JDBConnect(String dbDriver, String dbUrl, String dbUser, String dbPass) {
    try {
      Class.forName(dbDriver);
      conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

      System.out.println("DB 연결 성공 (매개변수가 있는 생성자)");
    }
    catch (Exception e) {
      System.out.println("DB 연결 중 오류가 발생했습니다.");
      e.printStackTrace();
    }
  }

//  매개변수로 application 내장객체를 받아서 사용하는 방식
  public JDBConnect(ServletContext application) {
    try {
//      매개변수로 받은 application 내장객체를 사용하여 web.xml 의 내용을 가져옴
      String dbDriver = application.getInitParameter("MySqlDriver");
      String dbUrl = application.getInitParameter("MySqlUrl");
      String dbUser = application.getInitParameter("MySqlUser");
      String dbPass = application.getInitParameter("MySqlPass");
      String dbOpt1 = application.getInitParameter("MySqlOpt1");
      String dbOpt2 = application.getInitParameter("MySqlOpt2");

//      xml 파일에서 특수기호 사용 시 정상적으로 동작하지 않음
//      데이터베이스 접속 url의 옵션 부분을 따로 분리하여 사용
//      xml 파일에서 html 특수기호를 사용 시 옵션을 분리하지 않고 한번에 입력할 수 있음
      dbUrl += "?" + dbOpt1 + "&" + dbOpt2;

      Class.forName(dbDriver);
      conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

      System.out.println("DB 연결 성공 (application 내장객체 사용)");
    }
    catch (Exception e) {
      System.out.println("DB 연결 중 오류가 발생했습니다.");
      e.printStackTrace();
    }
  }

  public void close() {
    try {
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }
    } catch (Exception e) {
      System.out.println("DB 접속 종료 중 오류가 발생했습니다.");
      e.printStackTrace();
    }
  }
}















