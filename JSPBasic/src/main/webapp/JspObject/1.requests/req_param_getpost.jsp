<%@ page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   // name "apple"에 딸려온 데이터 조회
   String id = request.getParameter("apple");
   // name "banana"에 딸려온 데이터를 변수 pw에 저장 후 body에 출력해보세요.
   String pw = request.getParameter("banana");
   // checkbox에 딸려온 데이터를 변수 hobby에 저장 후 body에 출력해보세요.
   String [] hobby = request.getParameterValues("hobby");
   String [] major = request.getParameterValues("major");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   전송받은 아이디 : <%= id %><br/>
   전송받은 비밀번호 : <%= pw %><br/>
   전송받은 취미 : <%= Arrays.toString(hobby) %><br/>
   전송받은 전공 : <%= Arrays.toString(major) %><br/>
   <hr/>
   취미를 for문으로 출력하기
   <%for (String name : hobby){ %>
       <%= name  %>&nbsp;
       <%} %>
</body>
</html>