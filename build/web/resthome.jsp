<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>rasoi</title>
        <style>
            a{
                color:white;
                text-decoration: none;
                
            }
            .c1{
                width:200px;
                height:50px;
                font-size:20px;
                font-weight:bold;
                border-style:solid;
                background:#16a085;
                margin-top:500px;
                padding:10px;
               
            }
            .c1:hover{
                width:200px;
                height:50px;
                font-size:20px;
                font-weight:bold;
                border-style:solid;
                background:#ec7063;
                margin-top:500px;
                padding:10px;
               
            }
             .c2{
                width:200px;
                height:50px;
                font-size:20px;
                font-weight:bold;
                border-style:solid;
                magrin-left:600px;
                margin-top:500px;
                padding:10px;
                background:#16a085;
              
                
            }
            .c2:hover{
                width:200px;
                height:50px;
                font-size:20px;
                font-weight:bold;
                border-style:solid;
                magrin-left:600px;
                margin-top:500px;
                padding:10px;
                background:#ec7063;
              
                
            }
        </style>
    </head>
    <body>
        
        <h2> <%
     String un=session.getAttribute("userid").toString();
     out.println("Welcome "+un);
     %>
        </h2> <%@include file="rhead.jsp" %>
        <HR>
     
        <%@include file="rmenu.jsp" %>
        <BR><BR><BR><BR><BR>
        <span class="c1">Edit Profile</span> <span class="c1">Change Password</span>
        <span class="c1"><a href="acfimg.jsp?un=<%=un%>">Add Featured Image</a></span>
        <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
    <a href="http://www.manalsoftech.com" style="color:white;text-decoration:none;">copyright @rasoi...online food ordering system</a>
</div>
    </body>
</html>
