package bitc.next502.jsp_20251226;

//  자바빈즈 : JSP 에서 사용하는 자바 클래스를 자바 빈즈라고 함
//  일반적인 자바 클래스임
public class Person {

//  필드 선언
  private String name;
  private int age;

//  생성자 선언
  public Person() {}

  public Person(String name, int age) {
    super();
    this.name = name;
    this.age = age;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }
}















