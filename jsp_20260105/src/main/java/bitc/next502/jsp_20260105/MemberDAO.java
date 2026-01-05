package bitc.next502.jsp_20260105;

import java.sql.*;

//  DAO : 데이터베이스를 컨트롤하기 위한 자바 클래스
//  각각의 메소드에 해당 테이블의 데이터를 추가, 삭제, 수정, 조회하는 기능을 구현하면 됨
public class MemberDAO {

//  데이터베이스 접속 및 SQL 쿼리 관련 클래스
  private Connection conn;
  private Statement stmt;
  private PreparedStatement pstmt;
  private ResultSet rs;

//  데이터베이스 접속 정보 설정
  private String dbDriver;
  private String dbUrl;
  private String dbUser;
  private String dbPass;

//  기본 생성자로 데이터베이스 접속 정보 변수를 초기화
  public MemberDAO() {
    dbDriver = "com.mysql.cj.jdbc.Driver";
    dbUrl = "jdbc:mysql://localhost:3306/next502db?characterEncoding=UTF-8&serverTimezone=UTC";
    dbUser = "test1";
    dbPass = "next502";
  }

//  데이터베이스 연결
  public void dbOpen() {
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
    } catch (Exception e) {
      System.out.println("\n*** 데이터베이스 연결 중 오류가 발생했습니다. ***\n");
      e.printStackTrace();
    }
  }

//  데이터베이스 연결 종료
  public void dbClose() {
    try {
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }
    }
    catch (Exception e) {}

    System.out.println("\n*** 데이터베이스 연결을 종료합니다. ***\n");
  }

//  로그인 가능 여부
//  사용자가 입력한 id/pw 를 가지고 있는 사용자가 있는지 여부를 확인하는 메소드
//  매개변수로 사용자가 입력한 id/pw를 전달받음
  public boolean isMember(String userId, String userPw) {
//    사용자 정보 조회 결과를 저장하는 변수
    boolean result = false;

//    사용자가 전달한 id/pw 를 사용하는 사용자가 있는지 확인하기 위한 SQL 문 생성
    String sql = "SELECT count(*) AS cnt FROM member ";
    sql += "WHERE id = ? ";
    sql += "AND pass = ? ";

    try {
//      PreparedStatement 객체 생성
      pstmt = conn.prepareStatement(sql);
//      SQL 문의 ? 에 데이터 입력하기
      pstmt.setString(1, userId);
      pstmt.setString(2, userPw);

//      완성된 SQL 문을 데이터베이스에 전달 및 실행 후 결과값 받아오기
      rs = pstmt.executeQuery();

//      데이터베이스에서 전달된 데이터가 있을 경우 true, 없으면 false
      if (rs.next() == true) {
//        전달받은 데이터가 있고, cnt 컬럼의 데이터가 1인지 아닌지 확인
        if (rs.getInt("cnt") == 1) {
          result = true;  // 사용자가 존재하므로 결과를 true 로 변경
        }
      }
    }
    catch (SQLException e) {
      System.out.println("데이터베이스 조회 중 오류가 발생했습니다.");
      e.printStackTrace();
    }
    finally {
      try {
        if (rs != null) { rs.close(); }
        if (pstmt != null) { pstmt.close(); }
      }
      catch (Exception e) {}
    }
//    데이터베이스 조회 결과를 반환
    return result;
  }

//  회원 정보 조회
  public MemberDTO selectMember(String userId) {
//    MemberDTO 타입의 변수 선언
    MemberDTO member = null;

//    사용자 정보를 조회하기 위한 SQL 문 생성
    String sql = "SELECT id, name, regidate FROM member ";
    sql += "WHERE id = ? ";

    try {
//      PreparedStatement 객체 생성
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, userId); // ? 에 데이터 입력

      rs = pstmt.executeQuery();

      if (rs.next()) {
//        사용자 정보가 있을 경우 지정한 컬럼에 대한 데이터 가져오기
        String id = rs.getString("id");
        String name = rs.getString("name");
        String regiDate = rs.getString("regidate");

//        MemberDTO 타입의 객체 생성 및 데이터 저장
        member = new MemberDTO();
        member.setId(id);
        member.setName(name);
        member.setRegidate(regiDate);
      }
    }
    catch (SQLException e) {
      System.out.println("데이터베이스 조회 중 오류가 발생했습니다.");
      e.printStackTrace();
    }
    finally {
      try {
        if (rs != null) { rs.close(); }
        if (pstmt != null) { pstmt.close(); }
      }
      catch (Exception e) {}
    }

//    생성된 MemberDTO 타입의 객체를 반환
    return member;
  }

//  회원 가입 가능 여부

//  회원 가입
  public int signup(MemberDTO member) {
    int result = 0;

//    1. 회원 가입 insert 문 생성
//    2. PreparedStatement 객체 생성
//    3. ? 부분에 데이터 입력
//    4. PreparedStatement 로 sql 실행
//    5. 결과를 받아서 리턴
    String sql = "INSERT INTO member(id, pass, name, regidate) ";
    sql += "VALUES (?, ?, ?, now()) ";

    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, member.getId());
      pstmt.setString(2, member.getPass());
      pstmt.setString(3, member.getName());

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      System.out.println("회원 가입 시 오류가 발생했습니다.");
      e.printStackTrace();
    }
    finally {
      try {
        if (pstmt != null) { pstmt.close(); }
      }
      catch (Exception e) {}
    }

    return result;
  }

//  회원 정보 수정

//  회원 탈퇴

}















