package bitc.next502.jsp_20260106.util;

import jakarta.servlet.jsp.JspWriter;

public class JSFunction {

//  메시지 알림창을 출력 후 지정한 URL 로 이동
  public static void alertLocation(String msg, String url, JspWriter out) {
    try {
//      자바스크립트 코드를 입력
      String script = "<script>";
      script += "alert('" + msg + "');";
      script += "location.href = '" + url + "';";
      script += "</script>";

//      JSP 내장 객체인 out 객체를 사용하여 자바스크립트 내용을 출력
      out.println(script);
    }
    catch (Exception e) {}
  }


//  메시지 알림창 출력 후 이전 페이지로 이동
  public static void alertBack(String msg, JspWriter out) {
    try {
      String script = "<script>";
      script += "alert('" + msg + "');";
      script += "history.back();";
      script += "</script>";

      out.println(script);
    }
    catch (Exception e) {}
  }
}















