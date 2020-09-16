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

 <style>
   body{
    background-image: url("h.jpg");
  height: 500%;
  background-color:#cccccc;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  position: relative;
   
   
   }
     
  
        table{ 
        
            border-collapse: collapse;          
            width: 50%;   
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
  max-width: 200px;
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
 
  color: white;
  font-family: "Courier New", Courier, monospace;
  font-size: 25px;
}
 .un {
    width: 76%;
    color:#FFFFFF;
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background:#ff3300;
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
    </style>  


<div class="bgimg">
    <div class="topleft">
    <p><img src="https://media0.giphy.com/media/jnQWqkSVoqKmKJbjAB/source.gif" alt="Trulli" width="200" height="150"></p>
    </div>
 
<body>

 <div class="middle">
<div class="hotel">
     <center><h1> YOUR ORDER IS CONFIRMED!</h1></center>
</div>

<%
String customer= session.getAttribute("nkey").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from specialtransaction where customer='"+customer+"'");
if(rs.next())
{
String cu=rs.getString("customer");	
String h=rs.getString("hotel");
String sdish=rs.getString("specialdish");
String dc=rs.getString("dishcost");
String p=rs.getString("phone");
String a=rs.getString("address");
String q=rs.getString("quantity");

%>
<center>
<table border="1" id="alter" >
    
<tr><th>customer</th><td><%=cu%></td></tr>
<tr><th>hotel</th><td><%=h%></td></tr>
<tr><th>specialdish</th><td><%=sdish%></td></tr>
<tr><th>dishcost</th><td><%=dc%></td></tr>
<tr><th>phone</th><td><%=p%></td></tr>
<tr><th>address</th><td><%=a%></td></tr>
<tr><th>quantity</th><td><%=q%></td></tr>

</tr>

</table>
</div>
</form>
</center>
<br>
<div class="middle">
<div class="hotel">
     <center><h1> HAPPY FOODING!</h1></center>
</div>
<br>
<p><center><img src="confirm gif.gif"></center><</p>

<%}%>
</body>
</html>