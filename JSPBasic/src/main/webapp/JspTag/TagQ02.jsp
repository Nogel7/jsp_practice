<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
   public int total = 0;
%>
페이지 누적 요청 수 : <%= total %></br>
매 10번째 방문자에게는 기프티콘을 드립니다.</br>
<%
  ++total;
  if(total % 10 == 0){
	  out.println("당첨되셨습니다!!");
  }
  out.println("</hr>");
%>
</body>
</html>