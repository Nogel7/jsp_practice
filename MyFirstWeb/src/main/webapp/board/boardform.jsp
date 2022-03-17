<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${sId eq null }">
    <%response.sendRedirect("http://localhost:8181/MyFirstWeb/boardList.do"); %>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="http://localhost:8181/MyFirstWeb/boardInsert.do" method="post">
        <input type="text" name="writer" value="${sessionScope.session_id}" readonly><br/>
        <input type="text" name="title" placeholder="제목을 입력해주세요." required><br/>
        <textarea row="30" cols="50"  name="content" placeholder="본문을 입력해주세요."  required></textarea><br/>
        <input type="submit" value="글쓰기"><input type="reset" value="초기화">      
    </form>
</body>
</html>