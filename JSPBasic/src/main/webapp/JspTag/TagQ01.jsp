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
    // Declaration 내부에
    // 1~10범위의 난수를 리턴하는 메서드
    // int randomNumber() 를 선언해주세요.
    int randomNumber(){
	    // 정수 1~10까지 발생시켜서 리턴하도록 로직 작성
	    int result = (int)(Math.random()*10)+1;
	    return result;
    }
    String randomColor(){
    	// 33%확률로 빨강,노랑,파랑
    	// 난수 발생을 시켜야 하고 Math.ramdom()은 0~1 사이니까
    	// 범위를 0.33, 0.66로 나눠서...?
    	double randomNum = Math.random();
    	String result;
		if(randomNum < 0.33){
			result = "빨강";
		}else if(randomNum < 0.66){
			result =  "노랑";
		}else{
			result =  "파랑";
		}
		
		return result;
    }
    
    // declaration에 선언한 변수는 서버를 끄기 전까지는 값이 누적됩니다.
    // 일종의 static 처럼 작동합니다.
    public int total = 0;// 데클리케이션은 서버가 켜지면 1번실행
    
%>
    <h3>오늘의 행운의 숫자와 행운의 색깔</h3>
    <p>행운의 숫자는 1~10 범위입니다.</p>
    <p>행운의 숫자 : <b><%= randomNumber() %></b></p>
    <p>색깔은 1/3확률로 바뀝니다.(빨강,노랑,파랑)</p>
    <p>행운의 색깔 : <b><%= randomColor() %></b>
    <h3>오늘의 방문자수</h3>
    <%// 스크립트릿은 실행할때마다 초기화
       out.println(++total);
       // scriptlet 내부에 선언한 변수는 접속시마다 초기화됩니다.
       int currentNum = 0;
       out.println("<br/>");
       out.println(++currentNum);
    %>
</body>
</html>