package bitc.next502.jsp_20260102;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;

public class DBConnPool {

  public Connection conn;
  public Statement stmt;
  public PreparedStatement pstmt;
  public ResultSet rs;

  public DBConnPool() {
    try {
      Context initCtx = new InitialContext();
      Context ctx = (Context) initCtx.lookup("java:comp/env");
      DataSource ds = (DataSource) ctx.lookup("dbcp_mysql");

      conn = ds.getConnection();
      System.out.println("\n ----- 커넥션 풀로 DB 연결 성공 -----\n");
    }
    catch (Exception e) {
      System.out.println("\n ----- 커넥션 풀로 DB 연결 실패 -----\n");
      e.printStackTrace();
    }
  }

  public void close() {
    try {
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }
    }
    catch (Exception e) {}
  }

}















