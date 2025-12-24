package bitc.next502.jsp_20251224_1;

import jakarta.servlet.jsp.JspWriter;

import java.io.IOException;

import static java.lang.System.out;

//  jsp 파일에서 java 파일로 자동 변환 시 jsp 파일명과 동일한 java 클래스 파일이 생성됨
public class ScriptElements {

//  선언부에 입력한 변수 및 메소드는 해당 자바 클래스 파일의 필드 및 메소드가 됨

  private int x = 100;
  private int y = 100;

  public int add(int num1, int num2) {
    return num1 + num2;
  }

//  jsp 파일에서 java 파일로 자동 변환 시 자동으로 생성되는 메소드
  public void _jspService() {

//    스크립틀릿 부분은 _jspService() 메소드 안의 변수 및 연산식으로 선언됨
    int result = add(10, 20);

//    표현식은 _jspService() 메소드의 안의 출력 메소드로 선언됨
    System.out.println("덧셈 결과 1 : " + result);
    System.out.println("덧셈 결과 2 : " + add(30, 40));
  }
}















