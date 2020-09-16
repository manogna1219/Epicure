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
String cost1=request.getParameter("dc");
String quantity=request.getParameter("qt");
int c1=Integer.parseInt(cost1);
int q1=Integer.parseInt(quantity);

String hotel=request.getParameter("h");
String specialdish=request.getParameter("sdish");
String phone=request.getParameter("phone");
String address=request.getParameter("add");
int dishcost=c1*q1;
String customer=session.getAttribute("nkey").toString();
String status="pending";

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into specialtransaction values( '"+customer+"', '"+hotel+"','"+specialdish+"','"+dishcost+"','"+phone+"','"+address+"','"+quantity+"','"+status+"')");
while (i>0) 
	response.sendRedirect("specialdishconfirm.jsp");
//System.out.println("order confirmed");




} catch (Exception e) {
//TODO Auto-generated catch block
e.printStackTrace();
}


%>





</body>
</html>