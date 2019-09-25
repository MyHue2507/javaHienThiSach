<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<table align="center" width='800'>
  		<tr>
  			<td>
  				<a href='docbao.jsp?k=ts'> Tin thoi su </a><hr>
  				<a href='docbao.jsp?k=qt'> Tin quoc te </a><hr>
  				<a href='docbao.jsp?k= tt'> Tin the thao </a><hr>
  			</td>
  			<td>
  				<% String ts = request.getParameter("k") ;
				if(ts == null)
					out.print("chon");
				else
					if(ts.equals("ts"))
						out.print("hien thi trang thoi su");
					else
						if(ts.equals("tt"))
							out.print("hien thi trang the thao");
						else
							out.print("hien thi trang quoc te");
				%>
  			</td>
  		</tr>
  
</table>

</body>
</html>