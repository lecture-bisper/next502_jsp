package bitc.next502.jsp_20260106.database;

//  데이터베이스의 member 테이블의 데이터를 전송하기 위한 DTO 클래스
public class MemberDTO {

  private String id;
  private String pass;
  private String name;
  private String regidate;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPass() {
    return pass;
  }

  public void setPass(String pass) {
    this.pass = pass;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getRegidate() {
    return regidate;
  }

  public void setRegidate(String regidate) {
    this.regidate = regidate;
  }
}















