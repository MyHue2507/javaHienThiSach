<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Random r = new Random();
		int n = r.nextInt(201);
	%>
	<table>
		<tr>
			<td>
				<%for(int i = 1 ; i <= n ; i++){
					%>
						<a href="bcc.jsp?so=<%=i%>"> <%=i %> </a>
					<%}%>
			</td>
		</tr>
		<tr>
			<td>
			<%String so = request.getParameter("so");
			if(so!= null){
				int soInt = Integer.parseInt(so) ; 
				for(int i = 1 ; i <= 10 ; i++){
					%><%=so%> * <%=i%> =  <%=soInt*i %> <hr><%
				} }%>
			</td>
		</tr>
	</table>
	
</body>
</html>