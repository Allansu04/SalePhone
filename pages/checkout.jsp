<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>order</title>
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
    <div class="ee"> 您的訂單</div>
    <div class="gg"><%@ page import = "java.sql.*, java.util.*"%>
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

sql="select * from phone";
ResultSet rs=con.createStatement().executeQuery(sql);
%>

        <%
        String  interest[] = request.getParameterValues("Product_Id");
        int q=0;
        int tota=0;
        int g=interest.length;
        int left;
        String idd;
       String leftString;
        out.println("<b>產品名稱<br>");
        
        while(rs.next())
        {  
  		  if(interest[q].equals(rs.getString(1)))
           {
            tota=tota+rs.getInt(3);
            out.println(rs.getString(2)+"--->"+rs.getString(3)+"元</br>"); 
            leftString = rs.getString(5);
            left = Integer.parseInt(leftString);
            left = left - 1;
            leftString = String.valueOf(left);
            idd = rs.getString(1);
            sql="update phone set phone_left='"+leftString+"'WHERE phoneid="+idd;
           con.createStatement().execute(sql);
                        
            if(q+1<g)q++;
           }
          
        }
               

           
		 out.println("<font size='5' color='#FF0000'><span style='background-color: #000000'>總價為"+tota+"元</span></font>");
         session.setAttribute("total",tota);
	     con.close();
     %></div>
    <div class="dd"><a href="../pages/index1.jsp"><button>回首頁</button></a></div>
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