<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>評分區</title>
  <link rel="stylesheet" type="text/css" href="../assets/css/headerandfooter.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
</head>

<body>
  <header>
    <div class="headlist">
      <a href="index.jsp" target="_blanket"><img src=" ../assets/img/logo.png" id="SALE"></a>
      <table>
        <tr>
          <td> <a href="index.jsp">首頁</a></td>
          <td><a href="buy1.jsp">商品購買</a></td>
          <td><a href="contactus.html">聯繫我們</a></td>
          <td><a href="aboutus.html">關於我們</a></td>
          <td><a href="login.html">會員登入</a></td>
        </tr>
      </table>
    </div>
  </header>
  <div class="lp">
    <img src="../assets/img/xingxing .png">
  </div>
  <div class="fm">
    <form name="form1" method="get" action="guestadd.jsp">
      <input type="text" name="name" placeholder="請輸入暱稱"><br>
      <input type="text" name="grade" placeholder="一星至五星"><br>
      </textarea><br>
      <input type="submit" name="Submit" value="送出">
      <input type="Reset" name="Reset" value="重新填寫">
    </form>
  </div>
  <footer>
    <div class="footer">
      <div class="fp">
        <text>Copyright © 2021 SALE PHONE 版權所有</text>
      </div>
    </div>
  </footer>
</body>

</html>