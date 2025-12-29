<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 12. 29.
  Time: 오후 3:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--  쿠키를 쉽게 사용하기 위한 CookieManager import --%>
<%@ page import="bitc.next502.jsp_20251229.CookieManager" %>
<%--  자바스크립트를 쉽게 사용하기 위한 JSFunction import --%>
<%@ page import="bitc.next502.jsp_20251229.JSFunction" %>

<%
//  idSaveMain.jsp 에서 전달받음 파라미터 값 가져오기
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");
  String saveCheck = request.getParameter("saveCheck");

//  전달받은 userId, userPw 가 지정된 값과 동일한지 비교
  if ("bitc".equals(userId) && "1234".equals(userPw)) {

//    전달받은 saveCheck 가 Y 인지 확인
    if (saveCheck != null && saveCheck.equals("Y")) {
//      Y 이면 쿠키 저장
      CookieManager.makeCookie(response, "loginId", userId, 60 * 60 * 24);
    }
    else {
//      Y 가 아니면 쿠키 삭제
      CookieManager.deleteCookie(response, "loginId");
    }

//    지정한 페이지로 이동
    JSFunction.alertLocation("로그인에 성공했습니다.", "idSaveMain.jsp", out);
  }
  else {
//    뒤로 가기
    JSFunction.alertBack("로그인에 실패했습니다.", out);
  }
%>















