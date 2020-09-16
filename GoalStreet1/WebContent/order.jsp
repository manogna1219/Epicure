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
String cost1=request.getParameter("c");
String quantity=request.getParameter("qt");
int c1=Integer.parseInt(cost1);
int q1=Integer.parseInt(quantity);

String hotel=request.getParameter("h");
String dish=request.getParameter("d");
String phone=request.getParameter("phone");
String address=request.getParameter("add");
int cost=c1*q1;
String customer=session.getAttribute("nkey").toString();
String status="pending";

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into transaction values( '"+customer+"', '"+hotel+"','"+dish+"','"+cost+"','"+phone+"','"+address+"','"+quantity+"','"+status+"')");
if (i>0)
	response.sendRedirect("confirm.jsp");
//System.out.println("order confirmed");




} catch (Exception e) {
//TODO Auto-generated catch block
e.printStackTrace();
}


%>








</body>
</html>