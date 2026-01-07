package bitc.next502.jsp_20260106.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;

//  데이터베이스 member 테이블의 데이터를 컨트롤하기 위한 DAO 클래스
public class MemberDAO extends JDBConnect {

  public MemberDAO() {
    super();
  }

  public MemberDAO(ServletContext app) {
    super(app);
  }

  public MemberDAO(String dbDriver, String dbUrl, String dbUser, String dbPass) {
    super(dbDriver, dbUrl, dbUser, dbPass);
  }

//  사용자 유무 확인
  public int isMember(String userId, String userPw) {
    int result = 0;

//    지정한 id/pw 를 사용하는 사용자가 있는지 여부를 확인하는 SQL 문 생성
    String sql = "SELECT count(*) AS cnt FROM member ";
    sql += "WHERE id = ? AND pass = ? ";

    try {
//      Connection 을 사용하여 PreparedStatement 객체 생성
      pstmt = conn.prepareStatement(sql);
//      sql 문의 ? 부분에 필요한 데이터 입력
      pstmt.setString(1, userId);
      pstmt.setString(2, userPw);

//      PreparedStatement 를 사용하여 데이터베이스 sql 문 실행 후 결과 가져오기
      rs = pstmt.executeQuery();

//      가져온 결과 확인
      while (rs.next()) {
        result = rs.getInt("cnt");
      }
    }
    catch (SQLException e) {
      printErrorMessage("사용자 조회", e);
    }
    finally {
      try {
        if (rs != null) { rs.close(); }
        if (pstmt != null) { pstmt.close(); }
      }
      catch (Exception e) {}
    }

    return result;
  }

//  사용자 정보 조회
  public MemberDTO selectMember(String userId) {
//    사용자 정보를 저장할 MemberDTO 타입의 변수 선언
    MemberDTO member = null;

//    지정한 사용자 정보를 조회할 SQL 문 생성
    String sql = "SELECT id, pass, name, regidate FROM member WHERE id = ? ";

    try {
//      Connection 을 사용하여 PreparedStatement 객체 생성
      pstmt = conn.prepareStatement(sql);
//      ? 부분에 데이터 입력
      pstmt.setString(1, userId);
//      PreparedStatement 를 사용하여 데이터 조회
      rs = pstmt.executeQuery();

//      데이터베이스에서 가져온 정보를 MemberDTO 객체 생성 및 저장
      while (rs.next()) {
        member = new MemberDTO();
        member.setId(rs.getString("id"));
        member.setPass(rs.getString("pass"));
        member.setName(rs.getString("name"));
        member.setRegidate(rs.getString("regidate"));
      }
    }
    catch (SQLException e) {
      printErrorMessage("사용자 정보 조회", e);
    }
    finally {
      try {
        if (rs != null) { rs.close(); }
        if (pstmt != null) { pstmt.close(); }
      }
      catch (Exception e) {}
    }

    return member;
  }

  @Override
  public void printErrorMessage(String msg, Exception e) {
    System.out.println("\n### " + msg + " 중 오류가 발생했습니다. ###\n");
    e.printStackTrace();
  }
}















