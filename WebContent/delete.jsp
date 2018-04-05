<%@page import="java.util.ArrayList"%>
<%@page import="kr.gudi.ListBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<ListBean> list= (ArrayList<ListBean>) request.getSession().getAttribute("list");
	%>
	<%=list %>


	<h1>삭제 되엇습니다.</h1>
	<a href="list.jsp"> 목록</a>
</body>
</html>