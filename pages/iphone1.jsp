 <%@ page import = "java.sql.*, java.util.*"%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html lang="en">

 <head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Iphone</title>
   <link rel="stylesheet" type="text/css" href="../assets/css/goods.css">
   <link rel="stylesheet" type="text/css" href="../assets/css/headerandfooter.css">

   <link rel="stylesheet" type="text/css" href="../assets/css/star.css">



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

   <div class="gpht">
     <img src="../assets/img/apple13.jpg">
   </div>

   <div class="gt">
     <table>
       <tr>
         <td>品牌:</td>
         <td>Apple</td>
       </tr>
       <tr>
         <td>型號:</td>
         <td>Iphone 11</td>
       </tr>
       <tr>
         <td>尺寸:</td>
         <td>6.1</td>
       </tr>
       <tr>
         <td>容量:</td>
         <td>128GB</td>
       </tr>
       <tr>
         <td>顏色:</td>
         <td>黑</td>
       </tr>
       <tr>
         <td>售價:</td>
         <td>12000 NTD</td>
       </tr>
     </table>
     <div class="gpht1">
       <img src="../assets/img/apple1.jpg">
     </div>
     <div class="gpht2">
       <img src="../assets/img/apple12.jpg">
     </div>
   </div>


   <div class="clean"></div>

   <div class="botton"><a href="buycar.html"><input type="button" value="加入購物車"></a></div>
   <div>

   </div>
   <a href="board.jsp" style="color: aqua;">留言</a><br>

   <%
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {   
           sql="USE `members`";
           con.createStatement().execute(sql);
           sql="SELECT * FROM `guestbook`"; 
           ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
           rs.last();
           int total_content=rs.getRow();
           out.println("共"+total_content+"筆留言<p>");          

         
                 
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "0";          
           int current_page=Integer.valueOf(page_string);
           if(current_page==0) 
	          current_page=1;	       
           int start_record=(current_page-1)*5;          
           sql="SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT ";
           sql+=start_record+",50";
           rs=con.createStatement().executeQuery(sql);%>
   <div class="pin">
     <%while(rs.next())
                {
                 out.println(rs.getString(1));
                 out.println(rs.getString(2)+"<br><hr>");
          }%>
   </div>
   <%
          con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
		   
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤"+err.toString());
}
%>



   <footer>
     <div class="footer">
       <p class="fp">Copyright © 2021 SALE PHONE 版權所有</p>
     </div>
   </footer>
 </body>

 </html>