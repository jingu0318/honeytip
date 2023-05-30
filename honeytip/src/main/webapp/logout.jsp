<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="ko" dir="ltr">
      <head>
    <meta charset="utf-8">
    <title>로그아웃</title>

  </head>
  <body>
  <%
      session.removeAttribute("Uid");
    session.removeAttribute("Uname");
    response.sendRedirect("home.jsp");
  %>
  </body>