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
String n=request.getParameter("name");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
Statement st=con.createStatement();
int i= st.executeUpdate("update customer set status='rejected' where name='"+n+"'");
if(i>0){
   %>
	<h1>rejected.......</h1>
	<% 
}


%>

</body>
</html>