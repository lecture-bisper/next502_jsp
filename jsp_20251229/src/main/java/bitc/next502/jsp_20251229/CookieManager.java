package bitc.next502.jsp_20251229;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//  쿠키를 사용하기 위한 소스코드를 클래스로 만들어 놓음
public class CookieManager {

//  쿠키 생성
//  첫번째 : JSP 의 response 내장 객체를 받음
//  두번째 : 쿠키 이름
//  세번째 : 쿠키에 저장할 값
//  네번째 : 쿠키가 클라이언트에 보관되는 시간(이 시간이 지나면 쿠키 자동 삭제)
  public static void makeCookie(HttpServletResponse response, String cookieName, String cookieValue, int cookieTime) {
    Cookie cookie = new Cookie(cookieName, cookieValue); // 쿠키 생성
    cookie.setPath("/");
    cookie.setMaxAge(cookieTime); // 쿠키 보관 시간 설정
    response.addCookie(cookie); // 응답 객체인 response 에 쿠키 정보 저장
  }

//  쿠키 내용 읽기
//  첫번째 : JSP 의 request 내장 객체를 받음
//  두번째 : 저장된 쿠키의 이름
  public static String readCookie(HttpServletRequest request, String cName) {
    String cookieValue = ""; // 가져올 쿠키값을 저장할 변수

//    쿠키 정보 모두 가져오기
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
//      배열에 저장된 쿠키 정보를 하나씩 출력
      for (Cookie item : cookies) {
        String cookieName = item.getName();

//        사용자가 지정한 이름과 쿠키에 저장된 이름이 같은지 확인
        if (cookieName.equals(cName)) {
          cookieValue = item.getValue(); // 쿠키에 저장된 데이터를 변수에 저장
        }
      }
    }

    return cookieValue;
  }

//  기존 쿠키 삭제
//  첫번째 : JSP 의 response 내장 객체를 받음
//  두번째 : 기존 쿠키 이름
  public static void deleteCookie(HttpServletResponse response, String cookieName) {

//    쿠키의 삭제는 쿠키 보관 시간을 0으로 만들면 기존 쿠키가 삭제됨
//    응답 객체인 response 를 전달하고, 삭제할 쿠키명과 보관시간을 0으로 설정하여 삭제
    makeCookie(response, cookieName, "", 0);
  }
}















