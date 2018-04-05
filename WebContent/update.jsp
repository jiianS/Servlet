<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.gudi.ListBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create!!!</title>
</head>
<body>
<%
	List<ListBean> list = (ArrayList<ListBean>) request.getSession().getAttribute("list");
	String title = request.getParameter("title");
	
	
	
%>
	<h1>글 수정 화면 입니다.</h1>
	<form>
		<input type="hidden" name="title" >
		<input type="text" name="contents" placeholder="내용을 작성하세요">
		<input type="submit" value="저장">
	</form>	
<%
	
		String upcontent = request.getParameter("contents");
		list.add(new ListBean(title,upcontent));
		request.getSession().setAttribute("list", list);

%>
	<h1> </h1>
	<a href ="list.jsp">목록</a>


</body>
</html>