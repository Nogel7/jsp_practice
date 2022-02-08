<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String id = (String)session.getAttribute("session_id");
    String nickname = (String)session.getAttribute("session_nick");
    
    // 로그인 안 한 사용자가 오면 login페이지로 되돌려보내주세요.
    if(id == null){
    	response.sendRedirect("session_login.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2><%=nickname %>(<%=id %>)님 로그인을 환영합니다.</h2>
    <a href="session_logout.jsp">로그아웃</a>
</body>
</html>