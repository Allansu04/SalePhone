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
request.setCharacterEncoding("big5");
request.getSession(true);

sql="select * from orders";
ResultSet rs=con.createStatement().executeQuery(sql);


%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <!DOCTYPE html>
 <html lang="en">

 <head>
   <%
 while(rs.next()){%>

   <div align="center">

     <table width="568" border="1" cellpadding="2" cellspacing="1" bordercolor="#000000" id="table9"
       style="border: 0 dashed #33CCCC">

       <input type="hidden" name="VTI-GROUP" value="0">
       <tr class="style4" align="middle" bgcolor="#eeffc8">
         <td align="left" width="66%" bgcolor="#FFFF00" bordercolor="#FFFFFF"> <b>
             <font size="3" face="Dotum">編號： <font color="#FF0000"> <%=rs.getString(1)%></font>
             </font>
           </b></td>


         <td align="left" bordercolor="#FFFFFF" bgcolor="#FF3399"><b>
             <font face="Dotum">金額：</font>
             <font size="3" face="Dotum"> <%=rs.getString(2)%></font>
           </b></td>
       </tr>
     </table>

   </div>

   <% }
 %>
   <a href="backadd.jsp" style="color: aqua;">新增商品</a><br><a href="backalter.jsp" style="color: aqua;">修改商品</a><br><a
     href="backdelete.jsp" style="color: aqua;">刪除商品</a><br>


   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>LOGIN</title>
   <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
   <link rel="stylesheet" type="text/css" href="../assets/css/headerandfooter.css">
 </head>

 <body>
   <div class="fm">
     <form action="backadd1.jsp" method="POST">
       <input type="text" name="m" panel placeholder="輸入金額">
       <input type="submit" name="b1" value="確定" class="b">
     </form>
 </body>

 </html>