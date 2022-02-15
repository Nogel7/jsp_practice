<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String sid = (String)session.getAttribute("session_id");

    if(sid != null){
    	response.sendRedirect("login_welcome.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 아이디와 비밀번호를 적어넣을 수 있는 폼을 만들어주세요.
    목적지는 login_check.jsp -->
    <h1>로그인 창입니다.</h1>
    <form action="login_check.jsp" method="post">
          <input type="text" name="fid" placeholder="ID"><br/>
          <input type="password" name="fpw" placeholder="PW"><br/>
          <input type="submit" value="로그인"><br/>
          <input type="reset" value="초기화"><br/>
    </form>
    <a href="join_form.jsp">회원가입하기</a><!--  -->
</body>
</html>