package bitc.next502.jsp_20251231;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnPool {

  public Connection conn;
  public Statement stmt;
  public PreparedStatement pstmt;
  public ResultSet rs;

  public DBConnPool() {
    try {
      Context initCtx = new InitialContext();
//      java:comp/env : JSP 어플리케이션의 리소스 폴더를 의미
//      lookup() : tomcat 서버에서 지정한 리소스 가져오기
      Context ctx = (Context) initCtx.lookup("java:comp/env");

//      context.xml 에 입력된 커넥션 풀 중계 정보 이름으로 커넥션 풀 정보 가져오기
//      DataSource ds = (DataSource) ctx.lookup("context_dbcp_mysql");

      DataSource ds = (DataSource) ctx.lookup("dbcp_mysql");

//      실제 커넥션 풀을 사용하여 데이터베이스에 연결
      conn = ds.getConnection();
      System.out.println("\n----- 커넥션 풀로 DB 연결 성공 -----\n");
    }
    catch (Exception e) {
      System.out.println("\n----- 커넥션 풀로 DB 연결 실패 -----\n");
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















