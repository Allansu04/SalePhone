<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
           sql="INSERT order (`orderprice`) ";
           sql+="VALUES ('" + tota + "')";      

           con.createStatement().execute(sql);

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