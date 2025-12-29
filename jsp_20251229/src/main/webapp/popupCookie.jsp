<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
//  getParameter() 을 사용하여 클라이언트에서 전달받은 데이터를 가져오기
  String chkVal = request.getParameter("inactiveToday");

//  클라이언트에서 전달받은 데이터가 1 이면 동작
  if (chkVal != null && chkVal.equals("1")) {
//    popupClose 라는 이름으로 쿠키를 생성, 저장할 값은 off
    Cookie cookie = new Cookie("popupClose", "off");
    cookie.setPath(request.getContextPath());
//    쿠키를 클라이언트에 저장할 시간 설정, 60 * 60 * 24 = 86,400 = 24시간
    cookie.setMaxAge(60 * 60 * 24);
//    응답을 위한 response 객체에 쿠키 정보 저장
    response.addCookie(cookie);
    out.print("쿠키 : 하루 동안 열지 않음");
  }
%>














