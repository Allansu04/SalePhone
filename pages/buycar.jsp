<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>buycar</title>
  <script src="https://unpkg.com/vue/dist/vue.min.js"></script>
  <link rel="stylesheet" type="text/css" href="../assets/css/buycarn.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/headerandfooter.css">

</head>

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
  <form method="post" action="checkout.jsp">
    <input type="hidden" name="VTI-GROUP" value="0">

    <%
 while(rs.next()){%>

    <div class="bb">

      <table id="table9">

        <input type="hidden" name="VTI-GROUP" value="0">
        <tr class="style4" align="middle" bgcolor="#eeffc8">
          <td width="34%" rowspan="8" align="left" bgcolor="#F4BE88">
            <img border="0" src="../assets/img/<%=rs.getString(1)%>.jpg" width="219" height="150">
          </td>

          <td align="left" width="66%" bgcolor="#FFFF00" bordercolor="#FFFFFF"> <b>
              <font size="3" face="Dotum">
                <font color="#FF0000"> <%=rs.getString(2)%></font>
              </font>
            </b></td>
        </tr>
        <tr class="style4" align="middle" bgcolor="#eeffc8">
          <td align="left" bordercolor="#FFFFFF" bgcolor="#FF3399"><b>
              <font face="Dotum">編號：</font>
              <font size="3" face="Dotum"> <%=rs.getString(1)%></font>
            </b></td>
        </tr>
        <tr class="style4" align="middle" bgcolor="#eeffc8">
          <td align="left" bgcolor="#6699FF" bordercolor="#FFFFFF"><b>
              <font size="3" face="Dotum">
                優惠價： <font color="#0000FF"><%=rs.getString(3)%></font>
              </font>
            </b></td>
        </tr>

        </tr>
        <tr class="style4" align="middle" bgcolor="#eeffc8">
          <td height="24" align="left" bgcolor="#CCCCFF" bordercolor="#FFFFFF">
            <b>庫存量：<font color="#000000"><%=rs.getString(5)%></font></b></td>
        </tr>

        <tr>
          <td height="76" align="left">
            　<p align="right">

              <%

leftString = rs.getString(5);
left = Integer.parseInt(leftString);
if( left == 0){
out.println("<b>無庫存</b>");}
else{out.print("<input type='checkbox' name='Product_Id' value='");%><%=rs.getString(1)%><%out.print("'><b>立刻購買</b>");}%>
          </td>
        </tr>

      </table>

    </div>

    <% }
 %>


    <p class="cc">&nbsp;<input name="Submit1" type="submit" value="訂購" /> </p>

  </form>

  </div>

  </td>
  <footer>
    <div class="footer">
      <div class="fp">
        <text>Copyright © 2021 SALE PHONE 版權所有</text>
      </div>
    </div>
  </footer>
</body>
<script src="../assets/js/main.js"></script>

</html>