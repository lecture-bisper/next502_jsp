package bitc.next502.jsp_20260107;

//  자바 빈즈 조건
//  1. 기본 생성자는 무조건 있어야 함
//  2. 멤버 변수의 접근제한자는 private
//  3. 멤버 변수에 대한 getter/setter 가 있어야 함

public class Person {

//  조건2, 접근제한자는 private
  private String name;
  private int age;

//  조건 1, 기본 생성자 필수
  public Person() {
    name = "유인나";
    age = 43;
  }

  public Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

//  조건3, getter/setter
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















