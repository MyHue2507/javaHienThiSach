<%@page import="bean.gioHangBean"%>
<%@page import="bo.gioHangBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<%
gioHangBo gh ;
	if(session.getAttribute("gh") != null){
		 gh = (gioHangBo) session.getAttribute("gh");
		for(gioHangBean g:gh.ds){%>
			<tr>
				<td><%=g.getTenSach() %></td>
				<td><%=g.getTacGia() %></td>
				<td><%=g.getGia() %></td>
				<td><%=g.getSoLuong() %></td>
				// tao form co 1 the input de sua so luong
				<td><form>
						
					</form>
				</td>
				//tao nut luu de luu chinh sua -- kiem tra so luong nhap vao
				<td>
				</td>
				<td><%=g.getThanhTien() %></td>
				//tao the a de thuc hien chuc nang xoa
				<td>
				</td>
			</tr>
		<%} %>
		
</table>
<div>Tong: <%=gh.tong() %></div>
	<%}
%>
</body>
</html>