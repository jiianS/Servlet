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
   List<ListBean> list=(ArrayList<ListBean>) request.getSession().getAttribute("list");
   String key = request.getParameter("key");
   
   for (int i=0; i<list.size();i++){
      if(list.get(i).getTitle().equals(key)){
         System.out.println(list.get(i).getTitle());   
         list.remove(i);
      	}
      }

    String back="<a href='list.jsp'>목록</a><br>" ;
   String succes="삭제가 완료되었습니다.";
%>
   <%=succes %>
   <%=back %>
</body>
</html>