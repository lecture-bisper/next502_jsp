package bitc.next502.jsp_20260106.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends JDBConnect {

  public BoardDAO() {
    super();
  }

  public BoardDAO(ServletContext app) {
    super(app);
  }

  public BoardDAO(String dbDriver, String dbUrl, String dbUser, String dbPass) {
    super(dbDriver, dbUrl, dbUser, dbPass);
  }

//  게시판 전체 목록 조회
  public List<BoardDTO> selectBoardList() {
    List<BoardDTO> boardList = new ArrayList<>();

    String sql = "SELECT num, title, id, postdate, visitcount FROM board ";
    sql += "ORDER BY num DESC ";

    try {
      stmt = conn.createStatement();
      rs = stmt.executeQuery(sql);

      while (rs.next()) {
        int num = rs.getInt("num");
        String title = rs.getString("title");
        String id = rs.getString("id");
        String postDate = rs.getString("postdate");
        int visitCount = rs.getInt("visitcount");

        BoardDTO board = new BoardDTO();
        board.setNum(num);
        board.setTitle(title);
        board.setId(id);
        board.setPostdate(postDate);
        board.setVisitcount(visitCount);

        boardList.add(board);
      }
    }
    catch (SQLException e) {
      printErrorMessage("데이터 조회 ", e);
    }
    finally {
      try {
        if (rs != null) { rs.close(); }
        if (stmt != null) { stmt.close(); }
      }
      catch (Exception e) {}
    }

    return boardList;
  }

//  게시판 글 등록
  public int insertBoard(BoardDTO board) {
    int result = 0;

    String sql = "INSERT INTO board (title, content, id, postdate) ";
    sql += "VALUES (?, ?, ?, now()) ";

    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, board.getTitle());
      pstmt.setString(2, board.getContent());
      pstmt.setString(3, board.getId());

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      printErrorMessage("데이터 추가", e);
    }
    finally {
      try {
        if (pstmt != null) { pstmt.close(); }
      }
      catch (Exception e) {}
    }

    return result;
  }

//  게시판 글 상세 보기
  public BoardDTO selectBoardDetail(int num) {
    BoardDTO board = null;

    String sql = "SELECT num, title, content, id, postdate, visitcount FROM board ";
    sql += "WHERE num = ? ";

    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, num);

      rs = pstmt.executeQuery();

      if (rs.next()) {
        int boardNum = rs.getInt("num");
        String boardTitle = rs.getString("title");
        String boardContent = rs.getString("content");
        String userId = rs.getString("id");
        String boardPostDate = rs.getString("postdate");
        int boardVisitCount = rs.getInt("visitcount");

        board = new BoardDTO();
        board.setNum(boardNum);
        board.setTitle(boardTitle);
        board.setContent(boardContent);
        board.setId(userId);
        board.setPostdate(boardPostDate);
        board.setVisitcount(boardVisitCount);
      }
    }
    catch (SQLException e) {
      printErrorMessage("데이터 조회", e);
    }
    finally {
      try {
        if (pstmt != null) { pstmt.close(); }
      } catch (Exception e) {}
    }

    return board;
  }

//  게시판 글 수정
  public int updateBoard(BoardDTO board) {
    int result = 0;

    String sql = "UPDATE board SET title = ?, content = ?, postdate = now() ";
    sql += "WHERE num = ? ";

    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, board.getTitle());
      pstmt.setString(2, board.getContent());
      pstmt.setInt(3, board.getNum());

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      printErrorMessage("데이터 수정", e);
    }
    finally {
      try {
        if (pstmt != null) { pstmt.close(); }
      }
      catch (Exception e) {}
    }

    return result;
  }

//  게시판 글 삭제
  public int deleteBoard(int num) {
    int result = 0;

    String sql = "DELETE FROM board WHERE num = ? ";

    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, num);

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      printErrorMessage("데이터 삭제", e);
    }
    finally {
      try {
        if (pstmt != null) { pstmt.close(); }
      }
      catch (Exception e) {}
    }

    return result;
  }

//  게시판 글 조회수 증가
  public void visitCountUp(int num) {

//    게시판 글 조회수 증가를 위한 SQL 문 생성
    String sql = "UPDATE board SET visitcount = visitcount + 1 WHERE num = ? ";

    try {
//      Connection 을 사용하여 PreparedStatement 객체 생성
      pstmt = conn.prepareStatement(sql);
//      ? 에 데이터 입력
      pstmt.setInt(1, num);

//      PreparedStatement 로 SQL 문 실행
      pstmt.executeUpdate();
    }
    catch (SQLException e) {
      printErrorMessage("조회수 증가", e);
    }
    finally {
      try {
        if (pstmt != null) { pstmt.close(); }
      } catch (Exception e) {}
    }
  }

  @Override
  public void printErrorMessage(String msg, Exception e) {
    System.out.println("\n### " + msg + " 중 오류가 발생했습니다. ###\n");
    e.printStackTrace();
  }
}















