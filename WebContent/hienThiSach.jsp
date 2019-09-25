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
	<table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<td width="200">
				<%
					sachBo sach = new sachBo() ;
					for(sachBean s : sach.getSach()){%>
						<a href="hienThiSach.jsp?maSach=<%=s.getmSach()%>&tenSach=<%=s.getTenSach()%>&gia=<%=s.getGia()%>&tacGia=<%=s.getTacGia()%>&anh=<%=s.getAnh()%>"><%=s.getmSach() %></a><hr>
					<%}
				%>
			</td>
			<td>
				<%
					String ms = request.getParameter("maSach");
					if(ms == null)
						out.print("Chọn");
					else{
						%>
							Mã Sách : <%=request.getParameter("maSach") %><br>
							Tên Sách : <%=request.getParameter("tenSach") %><br>
							Tên tác giả : <%=request.getParameter("tacGia") %><br>
							Giá : <%=request.getParameter("gia") %><br>
							Ảnh : <img src="<%=request.getParameter("anh")%>">
						<%
					}
				%>
			</td>
		</tr>
	</table>
</body>
</html>