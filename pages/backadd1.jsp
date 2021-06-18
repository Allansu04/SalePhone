<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<html>

<head>
</head>

<body>
    <%  		
        try {
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
                String url="jdbc:mysql://localhost:3306/test?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        if(con.isClosed())
                    out.println("連線建立失敗");
                else
                {	
                    con.createStatement().execute("use `members`");       
                    int new_m=request.getParameter("m")
					String sql = "INSERT `orders`(`order_price`) " +
                                 "VALUES ('m')";
                    boolean no= con.createStatement().execute(sql); 
                    //int no=con.createStatement().executeUpdate(sql); 
                    if (!no) 
                        out.println("新增成功");
                    else
                        out.println("新增失敗");  
                        con.close();
					response.sendRedirect("back.jsp") ;
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
</body>

</html>