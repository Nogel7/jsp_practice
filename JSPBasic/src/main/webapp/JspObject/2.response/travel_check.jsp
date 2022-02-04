<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   // radio는 여러 대상 중 하나만 선택할 수 있기 때문에 데이터가 무조건 하나만 넘어오는것이 담보됩니다.
   String spot = request.getParameter("spot");
   // 콘솔을 이용해 전달데이터 확인
   System.out.println(spot);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   if(spot.equals("japan")){
	   response.sendRedirect("travel_japan.jsp");
   } else if (spot.equals("china")){
	   response.sendRedirect("travel_china.jsp");
   } else if (spot.equals("canada")){
	   response.sendRedirect("travel_canada.jsp");   
   } else if (spot.equals("vietnam")){
	   response.sendRedirect("travel_vietnam.jsp");   
   }
%>
</body>
</html>