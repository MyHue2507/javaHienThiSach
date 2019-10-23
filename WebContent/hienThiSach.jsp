<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="bo.sachBo"%>
<%@page import="bean.sachBean"%>
<%@page import="java.util.ArrayList"%>
<%@ 
  page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table cellspacing="50" cellpadding="5">
		<tr>
			<td width="200">
				<%
					sachBo sach = new sachBo() ;
				ArrayList<sachBean> ds = sach.getSach();
				int ss = ds.size();
				for(int i = 0 ; i< ss ; i++){
					sachBean s =  ds.get(i);
				%>
				<tr>
					<td><img  src="<%= s.getAnh()%>" height="200"><br>
					<%=s.getTenSach() %><br>
					<%=s.getGia() %><br>
					<a href="mua.jsp?ms=<%=s.getmSach()%>&ts=<%=s.getTenSach()%>&tg=<%=s.getTacGia() %>&gia=<%=s.getGia()%>"><img  src="buynow.jpg"></a><hr>
					
					</td>
				<%
				i++;
				if(i<ss){
					s = ds.get(i) ;%>
					<td><img  src="<%= s.getAnh()%>" height="200"><br>
					<%=s.getTenSach() %><br>
					<%=s.getGia() %><br>
					<a href="mua.jsp?ms=<%=s.getmSach()%>&ts=<%=s.getTenSach()%>&tg=<%=s.getTacGia() %>&gia=<%=s.getGia()%>"><img  src="buynow.jpg"></a><hr>
					</td>
				<% 
				}%>
				</tr>
				<%} %>
			</td>
		</tr>
	</table>
</body>
</html>