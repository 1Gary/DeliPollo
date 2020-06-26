<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>rasoi</title>
        <style>
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
     out.println("Bienvenido/a "+un);
     %>
        </h2> <%@include file="rhead.jsp" %>
        <HR>
     
        <%@include file="rmenu.jsp" %>
        <BR><BR><BR><BR><BR>
        <%
        String fid=request.getParameter("fid");
        session.setAttribute("fid",fid);
        %>
        <form action="douplimgfood.jsp" method="post" enctype="multipart/form-data" name="form1">
        
        <table width="400" height="200" style="margin:auto;">
          <tr>
            <td colspan="2" align="center"><h2>Uplode Image<h2></td>
          </tr>
          <tr>
            <td>Select Image</td>
            <td><label for="fileField"></label>
            <input type="file" name="fileField" id="fileField"></td>
          </tr>
          <tr>
            <td colspan="2" align="center">
              <input type="submit" name="button" id="button" value="Submit">
            </td>
          </tr>

        </table>
        </form>
        <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
    <a href="#" style="color:white;text-decoration:none;">copyright GRUPO 5</a>
</div>
    </body>
</html>
