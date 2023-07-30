<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
헤더 연결 테스트<br>
model에 저장한 message : ${msg} <br>

<c:forEach items="${list }" var="cate">
	cateName : ${cate.categoryName }
</c:forEach>

</body>
</html>