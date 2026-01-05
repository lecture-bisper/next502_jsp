package bitc.next502.jsp_20260105;

//  DTO : 데이터베이스와 자바 간의 데이터 타입이 서로 다르므로 서로 데이터 타입을 맞추기 위해 사용하는 클래스
//  데이터베이스의 테이블 컬럼명과, 자바 DTO 클래스의 필드명을 동일하게 사용하는 것을 권장
//  데이터베이스는 스네이크 명명법을 주로 사용하고, 자바는 카멜 명명법을 주소 사용하기 때문에 필드의 이름이 혼돈될 수 있으므로 이름을 통일하는 것이 좋음
//  자바에서 데이터베이스를 사용하기 위한 새로운 데이터타입이라고 생각하는 것이 좋음
public class MemberDTO {

//  DB의 int 타입은 자바의 int 타입으로 사용
//  DB의 varchar 타입은 자바의 String 타입으로 사용
//  DB의 DateTime 타입은 자바의 String 타입으로 사용
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















