<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head>
<title></title>
</head>
<body>
<%
try {

    Class.forName("com.mysql.jdbc.Driver");
    try {

        String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=big5";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {

           sql="use members";
           con.createStatement().execute(sql);
           String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"));
		   String id=request.getParameter("id");
		   String pwd=request.getParameter("pwd");


           sql="insert members (id,pwd,name) ";
           sql+="value ('" + id + "', ";
		   sql+="'"+  pwd +"', ";
		   sql+="'" + new_name + "')";      

           con.createStatement().execute(sql);

           con.close();
		   response.sendRedirect("login1.html") ;
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
