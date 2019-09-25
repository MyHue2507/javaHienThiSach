<%@ 
  page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bảng Cửu Chương</title>
</head>
<body>
	<table border="1" cellspacing="0">
 		<%for(int i = 1 ; i <= 9 ; i++){%>
 			<tr>
 				<%for( int j = 1 ; j <= 9 ; j++){%>
 					<td width="100" height="30" align="center"><%=i %> x <%=j %> = <%=i*j %></td>
 				<%} %>
 			</tr>
 		<%} %>
    </table>
</body>
</html>