<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login DeliPollo</title>
        <style>
            .p1{
                width:450px;
                margin:auto;
                margin-top:100px;
                background:black;
                opacity:.8;
                padding:10px;
                text-align:center;
                font-size:24px;
                color:white;
            }
            .t1{
                width:350px;
                font-size:18px;
                padding:5px;
                border-radius:5px;
                margin-left:20px;
                margin-bottom:5px;
            }
            .t2{ width:365px;
                font-size:18px;
                padding:5px;
                border-radius:5px;
                margin-left:20px;
                margin-bottom:5px;
            }
            </style>
    </head>
     
    <body>
             <%@include file="uhead.jsp" %>
        <form action="ucheck.jsp" class="p1">
          <h2>INICIAR SESIÓN</h2>
            <input type="text" name="un" placeholder="Enter Userid "  class="t1"/>
            <input type="password" name="ps" placeholder="Enter Passowrd "  class="t1"/>
            <input type="submit"  class="t2" value="SignIn"/>
              <%
            if(request.getParameter("msg")!=null)
            out.println(request.getParameter("msg"));
        
        %>
        <BR>
        <a href="index.jsp" style="color:white;text-decoration:none;">Regresar al inicio</a>
        </form>
    </body>
</html>
