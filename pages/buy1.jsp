<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BUY</title>
  <link rel="stylesheet" type="text/css" href="../assets/css/buy.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/headerandfooter.css">
</head>
<%
Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/test?serverTimezone=UTC";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use members";
con.createStatement().execute(sql);
%>
<%
request.setCharacterEncoding("UTF-8");
request.getSession(true);
int left;
String leftString;
sql="select * from phone";
ResultSet rs=con.createStatement().executeQuery(sql);


%>

<body>

  <header>
    <div class="headlist">
      <a href="index1.jsp" target="_blanket"><img src="../assets/img/logo.png" id="SALE"></a>
      <table>
        <tr>
          <td> <a href="index1.jsp">首頁</a></td>
          <td><a href="buy1.jsp">商品購買</a></td>
          <td><a href="contactus1.html">聯繫我們</a></td>
          <td><a href="aboutus1.html">關於我們</a></td>
          <td><a href="login1.html">會員登入</a></td>
        </tr>
      </table>
    </div>
  </header>
  <div class="gc">
    <table>
      <tr>
        <td> <a href="buy1.jsp">ALL</a></td>
        <td><a href="ac1.html">A</a></td>
        <td><a href="bc1.html">B</a></td>
        <td><a href="cc1.html">C</a></td>
        <td><a href="dc1.html">D</a></td>
      </tr>
    </table>
  </div>
  <%
 while(rs.next()){%>
  <div class="goods">
    <table>
      <tr>
        <td>
          <a href="<%=rs.getString(4)%>"><img src="../assets/img/<%=rs.getString(1)%>.jpg" class="gp"></a>
        </td>
        <td class="gp1"><a href="<%=rs.getString(4)%>"><%=rs.getString(2)%></a></td>
        <td class="gp2"><%=rs.getString(3)%>元</td>
        <td class="gp3"><a href="buycar.jsp"><input type="button" value="加入購物車"></a></td>
      </tr>
    </table>
  </div><% }%>


  <footer>
    <div class="footer">
      <p class="fp">Copyright © 2021 SALE PHONE 版權所有</p>
    </div>
  </footer>
</body>

</html>