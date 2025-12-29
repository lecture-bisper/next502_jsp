package bitc.next502.jsp_20251229;

import jakarta.servlet.jsp.JspWriter;

//  자바 클래스를 사용하여 자바스크립트를 동작 시키기 위한 클래스
public class JSFunction {

//  3개의 매개변수를 받음
//  첫번째 : 화면에 출력할 메시지
//  두번째 : 메시지 출력 후 이동할 URL
//  세번째 : JSP 의 내장객체인 out 을 받음
  public static void alertLocation(String msg, String url, JspWriter out) {
    try {
//      String 타입의 변수에 자바스크립트 코드를 입력
      String script = "";
      script += "<script>";
      script += "alert('" + msg + "');"; // 화면 상단에 알림 메시지창 출력
      script += "location.href = '" + url + "';"; // 지정한 url로 이동
      script += "</script>";

      out.print(script);
    }
    catch (Exception e) {

    }
  }

//  2개의 매개변수를 받음
//  첫번째 : 화면에 출력할 메시지
//  두번째 : JSP 의 내장객체인 out 을 받음
  public static void alertBack(String msg, JspWriter out) {
    try {
      String script = "";
      script += "<script>";
      script += "alert('" + msg + "');";
      script += "history.back();"; // 자바스크립트로 페이지 뒤로가기 실행
      script += "</script>";

      out.print(script);
    }
    catch (Exception e) {

    }
  }
}















