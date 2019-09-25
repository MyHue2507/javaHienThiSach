<%@page import="java.util.Random"%>
<%@page import ="java.lang.Math"  %>
<%@ 
  page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Xổ Số</title>
</head>
<body>
<%
	int[] soGiai =  {1,1,1,2,7,1,3,1,1} ;
	int[] soChuSo = {6,5,5,5,5,4,4,3,2} ;
	Random r = new Random();

%>
	<table>
		<%for(int i = 8 ; i >= 0 ; i-- ){
			%><tr>
				<td width="200">Giải <%=((i == 8) ? "Tám" :(i == 7) ?  "Bảy" : (i == 6) ? "Sáu" : (i == 5) ? "Năm" :(i == 4) ? "Tư" : (i == 3) ? "Ba" : (i == 2) ? "Nhì" : (i == 1) ? "Nhất" : "Đặc biệt" ) %></td>
				<td align = "center"><%for(int j = 0 ; j < soGiai[i] ; j++){
					int temp = r.nextInt((int)Math.pow(10,soChuSo[i]));
					for(int k = soChuSo[i] - 1 ; k >= 0 ; k--){%>
						<%=(temp/((int)Math.pow(10,k)))%><%
						temp = temp % ((int)Math.pow(10, k)) ;
					}
					if(j == 3)  %><br><% else %>&emsp;&emsp;<% ;
				} %></td>
				</tr><% 
		} %>
	</table>
</body>
</html>