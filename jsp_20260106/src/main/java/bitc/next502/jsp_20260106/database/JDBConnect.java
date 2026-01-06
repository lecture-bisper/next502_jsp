package bitc.next502.jsp_20260106.database;

import jakarta.servlet.ServletContext;

import java.sql.*;

public class JDBConnect {

  public Connection conn;
  public Statement stmt;
  public PreparedStatement pstmt;
  public ResultSet rs;

  private String dbDriver;
  private String dbUrl;
  private String dbUser;
  private String dbPass;

  public JDBConnect() {
    this(
        "com.mysql.cj.jdbc.Driver",
        "jdbc:mysql://localhost:3306/next502db?characterEncoding=UTF-8&serverTimezone=UTC",
        "test1",
        "next502"
    );
  }

  public JDBConnect(ServletContext app) {
    this(
        app.getInitParameter("MySqlDriver"),
        app.getInitParameter("MySqlUrl"),
        app.getInitParameter("MySqlUser"),
        app.getInitParameter("MySqlPass")
    );
  }

  public JDBConnect(String dbDriver, String dbUrl, String dbUser, String dbPass) {
    this.dbDriver = dbDriver;
    this.dbUrl = dbUrl;
    this.dbUser = dbUser;
    this.dbPass = dbPass;
  }

  public void dbOpen() {
    try {
      Class.forName(dbDriver);
      conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
      System.out.println("\n*** 데이터베이스에 연결되었습니다. ***\n");
    }
    catch (Exception e) {
      System.out.println("\n*** 데이터베이스 연결에 실패했습니다. ***\n");
      e.printStackTrace();
    }
  }

  public void dbClose() {
    try {
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }
    }
    catch (Exception e) {
      System.out.println("\n*** 데이터베이스 연결 및 리소스 해제 중 오류가 발생했습니다. ***\n");
      e.printStackTrace();
    }
  }
}















