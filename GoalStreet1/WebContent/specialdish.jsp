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
<title>DISHES</title>
</head>
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
    color:#ff3300 ;  
    background-color: #000000;  
    }
    table#alter tr:nth-child(even) {  
    background-color: #ff3300;  
}  
table#alter tr:nth-child(odd) {  
    background-color: #ff3300;
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
  background-image: url("q.jpg");
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
    <body>
    
    <div class="bgimg">
  <div class="topleft">
    <p><img src="https://media0.giphy.com/media/jnQWqkSVoqKmKJbjAB/source.gif" alt="Trulli" width="200" height="150"></p>
  </div>
  <div class="middle">
<div class="hotel">
     <center><h1></h1></center>
</div>

     <table border="1" id="alter" >
     <tr><th>hotel</th><th>address</th><th>tables</th><th>info</th><th>contact</th>
      <th>specialdish</th><th>dishcost</th> <th>order</th>

        
  <title>Hotels</title>
</head>
<form action="specialdish.jsp">
<body>
  <div class="main">
    <p class="sign" >ENTER YOUR FAVOURITE DISH</p>
     <form class="form1">
    
    <input class="un" type="text"  name="specialdish" placeholder="Enter dish" >     
      <button class="btn" type="submit" align="center" value="enter">
        </button>    
        </form>
    </div>
    <div class="main">
    <p class="sign">THERE YOU GO..GRAB UR FOOD</p>



<%try{
String sdish=request.getParameter("specialdish");
//String specialdish= session.getAttribute("nkey").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicure","root","");

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from hotel where specialdish='"+sdish+"'");
while(rs.next())
{
String n=rs.getString("hotel");
String p=rs.getString("address");
String e=rs.getString("tables");
String o=rs.getString("info");
String i=rs.getString("contact");
String s=rs.getString("specialdish");
String dc=rs.getString("dishcost");


%>
<tr>
<td><%=n%></td>
<td><%=p%></td>
<td><%=e%></td>
<td><%=o%></td>
<td><%=i%></td>
<td><%=s%></td>
<td><%=dc%></td>
</tr>


<td><a href=" specialdishcart.jsp?h=<%=n%>&sdish=<%=s%>&dc=<%=dc%>">order</a></td>
</tr>
<%}}catch(Exception e){
	
}
%>

</table>
</body>
</form>
</body>
</html>




