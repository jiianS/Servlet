<%@page import="com.sun.org.apache.bcel.internal.generic.NEWARRAY"%>
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
	String key= request.getParameter("key");
	String contents = request.getParameter("contents");
	//String title= request.getParameter("title");
	if(contents == null){	
%>
	<h1>글 수정 화면 입니다.</h1>
	<form >
		<input type="hidden" name="key" value= "<%=key %>">
		<input type="text" name="contents" placeholder="내용을 작성하세요">
		<input type="submit" value="저장">
	</form>

<%
	}		
		String upcontent = request.getParameter("contents");
		System.out.println(upcontent);
		
		for(int i=0; i<list.size(); i++){
			if (list.get(i).getTitle().equals(key)) {
				list.get(i).setContents(upcontent);
			}
		}
		
		System.out.println(list);
		request.getSession().setAttribute("list", list);
		
		if(contents != null){
		%><h1>수정되었습니다</h1>
			<a href = "list.jsp">목록으로</a>
		<% 
			
		}
	%>		

</body>
</html>