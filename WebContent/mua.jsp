<%@page import="java.util.ArrayList"%>
<%@page import="bean.gioHangBean"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
<%
	String tenSach = request.getParameter("ts");
	String maSach = request.getParameter("ms");
	String tacGia = request.getParameter("tg");
	String giaTam = request.getParameter("gia");
	
	if(giaTam != null){
		long gia = Long.parseLong(giaTam);
		gioHangBo gh = null ;
		//Kiem tra xem da tao session gh chua
		if(session.getAttribute("gh") == null){
			gh = new gioHangBo() ;
			session.setAttribute("gh", gh);}
		//lay session: gh luu vao bien: gh
		gh = (gioHangBo) session.getAttribute("gh");
		//thay doi bien: goi ham them
		gh.themSach(maSach, tenSach, tacGia, gia,1);
		//  luu session gh
		session.setAttribute("gh", gh);
		//hien thi gio hang
		ArrayList<gioHangBean> ds = gh.ds ;
	response.sendRedirect("hienThiGio.jsp");
		
	}
%>
</body>
</html>