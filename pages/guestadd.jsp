<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>add</title>
</head>
<body>
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
 
           sql="use members";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");  
           String new_name=request.getParameter("name");
           String new_grade=request.getParameter("grade");
           //String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
           //String new_grade=new String(request.getParameter("grade").getBytes("ISO-8859-1"),"UTF-8");
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
	
           sql="INSERT guestbook (`guestbookid`, `grade`, `Putdate`) ";
           sql+="VALUES ('" + new_name + "', ";
		   sql+="'"+new_grade+"', ";
           sql+="'"+new_date+"')";      

           con.createStatement().execute(sql);

           con.close();

           response.sendRedirect("iphone1.jsp");
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
