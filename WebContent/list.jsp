<%@page import="sun.misc.Contended"%>
<%@page import="kr.gudi.ListBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
</head>

<body>
	<p>
		<a href="create.jsp">작성</a>
	</p>

	<%
		List<ListBean> list = (ArrayList<ListBean>)request.getSession().getAttribute("list");
	
		if(list == null){
			list = new ArrayList<ListBean>();
			list.add(new ListBean("HTML", "HTML is...."));
			list.add(new ListBean("CSS", "CSS is. ..."));
			list.add(new ListBean("JAVASCRIPT", "JAVASCRIPT...is ...."));
			request.getSession().setAttribute("list",list);
		}	
		String html = "";

		for (int i = 0; i < list.size(); i++) {
			html += (i + 1) + ") <a href ='list.jsp?key=" + list.get(i).getTitle() + "'>" + list.get(i).getTitle()
					+ "</a><br>";
		}
		
		System.out.println(html);
	%>
	<%=html%>	

	<%
		String key = request.getParameter("key");
		System.out.println(key);
	%>
	<%=key %>
	 
	
	<%
		String contents = "";

		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getTitle().equals(key)) {
				System.out.print(list.get(i).getContents());
				contents = list.get(i).getContents();
			}
		}
	
		
		String del= "  <a href=delete.jsp?key="+ key +">삭제</a><br>"; 
		String up = "<a href=update.jsp?key="+ key +">수정</a>";
	%>
	<%=up%> <%=del%>
	<%=contents %>
		
	
</body>
</html>