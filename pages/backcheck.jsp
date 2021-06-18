<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("id") !=null && !request.getParameter("id").equals("") 
	&& request.getParameter("pwd") != null && !request.getParameter("id").equals("")){

    sql = "SELECT * FROM `back` WHERE `back_id`='" +request.getParameter("id") + 
	      "'  AND `back_pwd`='" + request.getParameter("pwd") + "'"  ; 
	
    ResultSet rs =con.createStatement().executeQuery(sql);
    
    if(rs.next()){            
        session.setAttribute("id",request.getParameter("id"));
		con.close();
        response.sendRedirect("back.jsp") ;
    }
    else{
		con.close();//
        out.println("密碼帳號不符 !! <a href='login.html'>按此</a>重新登入") ;
	}
}
else
	response.sendRedirect("backcheck.html");
%>
