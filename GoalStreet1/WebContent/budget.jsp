<%@page import="java.sql.ResultSet"%>
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
<style>
   table{  
            border-collapse: collapse;  
            width: 100%;   
        }  
        th,td{  
           border: 2px solid green;   
           padding: 15px;  
    }  
    
    table#alter th {  
    color:#000000 ;  
    background-color: #ff3300;  
    }
    table#alter tr:nth-child(even) {  
    color:#FFFFFF;
    background-color: #000000;  
}  
    table#alter tr:nth-child(odd) { 
    color:#FFFFFF; 
    background-color: #000000;
    } 
    
    .container {
  position: relative;
  width: 100%;
  max-width: 400px;
}

.container img {
  width: 100%;
  height: auto;
}

.container .btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #f1f1f1;
  color: black;
  font-size: 16px;
  padding: 16px 30px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

.container .btn:hover {
  background-color: black;
  color: white;
}
.column {
  float: left;
  width: 50%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
  }
    
     .hotel{
     color:red;
     }  
     .bgimg {
  background-image: url("black.jpg");
  height: 100%;
  background-position: center;
  background-size: cover;
  position: relative;
  color: white;
  font-family: "Courier New", Courier, monospace;
  font-size: 25px;
}  

 .un {
    width: 26%;
    color:#ff3300;
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background:#FFFFFF;
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 50px;
    margin-left: 46px;
    text-align: center;
    margin-bottom: 27px;
    font-family:$font-family;
    cursor:pointer
    }
    
    form.form1 {
        padding-top: 40px;
    }

 .un:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;        
    }

             

</style>

 <div class="bgimg">
  <div class="topleft">
    <p><img src="https://media0.giphy.com/media/jnQWqkSVoqKmKJbjAB/source.gif" alt="Trulli" width="200" height="150"></p>
  </div>
 <form action="budget.jsp">
<body>
  <div class="main">
    <p class="sign" align="center">SEARCH BY YOUR BUDGET</p>
     <form class="form1">
    
   ENTER RANGE FROM:<input class="un" type="text"  align="center" name="cost1" placeholder="Enter the range" > <br>
   ENTER RANGE TO:   <input class="un" type="text"  align="center" name="cost2" placeholder="Enter range to" >      
      <button class="btn" type="submit" align="center" value="enter">
        </button>    
        </form>
        </div>
    </div>

 <div class="middle">
<div class="hotel">
     <center><h1>ON BASIS OF YOUR BUDGET</h1></center>
</div>

     <table border="1" id="alter" >
     <tr><th>HOTEL</th><th>DISH</th><th>COST</th><th>INFO</th><th>ORDER</th>

<%try{
String rangefrom=request.getParameter("cost1");
String rangeto=request.getParameter("cost2");

//String specialdish= session.getAttribute("nkey").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select * from items where cost between ' "+rangefrom+" ' and ' " +rangeto+" '");
while(rs.next())
{
String h=rs.getString("hotel");
String d=rs.getString("dish");
String c=rs.getString("cost");
String i=rs.getString("info");

%>
<tr>
<td><%=h%> </td>
<td><%=d%> </td>
<td><%=c%> </td>
<td><%=i%></td>
<td><a href="addtocart.jsp?h=<%=h%>&d=<%=d%>&c=<%=c%>">order</a></td>
</tr>

<%}}catch(Exception e){
	
}
%>
</table>
</div>
</body>
</html>