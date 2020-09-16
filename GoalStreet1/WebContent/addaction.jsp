<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String hotel=request.getParameter("hotel");
String dish=request.getParameter("dish"); 
String cost=request.getParameter("cost");
String info=request.getParameter("inf");

 try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
	    Statement st=con.createStatement();
	    int i=st.executeUpdate("insert into items values('"+hotel+"','"+dish+"','"+cost+"','"+info+"')");
	if (i>0)
		response.sendRedirect("viewitems.jsp");
	//System.out.println("registerted");




} catch (Exception e) {
// TODO Auto-generated catch block
e.printStackTrace();
}





%>

</body>
</html>