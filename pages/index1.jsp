<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SALE PHONE</title>
  <link rel="stylesheet" type="text/css" href="../assets/css/index1.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/headerandfooter.css">
</head>

<body>

  <header>
    <div class="headlist">
      <a href="index1.jsp" target="_blanket"><img src=" ../assets/img/logo.png" id="SALE"></a>
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
  <%int count;
		String countString;
		try {
		String sql="";
			String url="jdbc:mysql://localhost:3306/test?serverTimezone=UTC";
		Connection con=DriverManager.getConnection(url,"root","1234");
		if(con.isClosed())
		out.println("連線建立失敗");
		else{
		sql="use members";
		con.createStatement().execute(sql);	
		sql="select * from counter" ;
		ResultSet rs=con.createStatement().executeQuery(sql);

		if (rs.next()){
		countString = rs.getString(1);
		count = Integer.parseInt(countString);
		//Object obj = session.getAttribute("online");
		//if (obj == null){ //判斷session是否結束
		if (session.isNew())
		{
			count=count + 1;
		countString = String.valueOf(count);
		sql="update counter set count = " + countString ;
		con.createStatement().execute(sql);
		session.setAttribute("online",count);
		}
		out.println("HELLO~您是第" + count + "位訪客。");
		}

			con.close();
			}


		}
		catch(Exception err)
		{
			out.println(err.toString());
		}%>
  <p>SALE PHONE</p>
  <div class="slider_container">
    <div>
      <img src="../assets/img/apple13.jpg" alt="pure css3 slider" width="400px" height="500px" />
      <span class="info">Iphone 11 </span>
    </div>
    <div>
      <img src="../assets/img/sam13.jpg" alt="pure css3 slider" width="400px" height="500px" />
      <span class="info">Samsung Note 5</span>
    </div>
    <div>
      <img src="../assets/img/sony23.jpg" alt="pure css3 slider" width="400px" height="500px" />
      <span class="info">Sony XZ</span>
    </div>
    <div>
      <img src="../assets/img/sony33.jpg" alt="pure css3 slider" width="400px" height="500px" />
      <span class="info">Sony C3</span>
    </div>
    <div>
      <img src="../assets/img/sony13.jpg" alt="pure css3 slider" width="400px" height="500px" />
      <span class="info">Sony Z1</span>
    </div>
  </div>
  <p>熱銷排行榜</p>
  <p>TOP 5</p>
  <div class="ph">
    <div class="text">
      <img class="ph_img" src="../assets/img/apple13.jpg">
      <div class="textcontant">

        <a href="iphone1.html">
          <h2>Iphone 11</h2>
        </a>

      </div>
    </div>
    <div class="text">
      <img class="ph_img" src="../assets/img/sam13.jpg">
      <div class="textcontant">
        <a href="samnote51.html">
          <h2>Note 5</h2>
        </a>
      </div>
    </div>
    <div class="text">
      <img class="ph_img" src="../assets/img/sony13.jpg">
      <div class="textcontant">
        <a href="sonyc31.html">
          <h2>Xperia C3</h2>
        </a>

      </div>
    </div>
    <div class="text">
      <img class="ph_img" src="../assets/img/sony23.jpg">
      <div class="textcontant">
        <a href="sonyxz1.html">
          <h2>Xperia XZ</h2>
        </a>
      </div>

    </div>
    <div class="text">
      <img class="ph_img" src="../assets/img/sony33.jpg">
      <div class="textcontant">
        <a href="sonyz11.html">
          <h2>Xperia Z1</h2>
        </a>
      </div>

    </div>

  </div>
  <p>找不到你要的?</p>
  <div class="cu"><a href="contactus1.html"><img src="../assets/img/contactusicon.png" width="500px" height="250px"></a>
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