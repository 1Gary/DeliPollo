<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <style>
            .frm{
                width:300px;
                margin:auto;
                border-style:solid;
                padding:30px;
                margin-top:100px; 
                text-align:center;
                background: #100e38 ;
                border-radius:20px;
                color:white;
                font-size: 24px;
            }
            .txt{
                width:280px;
                font-size:16px;
                color:green;
                margin-bottom:10px;
                border-radius:4px;
                padding:2px;

            }
            .btn{
                width:290px;
                font-size:16px;
                color:red;
                margin-bottom:10px;
                border-radius:4px;
                padding:2px;

            }
            .txt:focus{
                width:280px;
                font-size:16px;
                color:green;
                margin-bottom:10px;
                border-radius:4px;
                border-color:red;

            }
        </style>
    </head>
    <body>
        <%@include file="uhead.jsp"%>
        <form action="doregister.jsp" class="frm">
            <h2>REGISTRARSE</h2>
            <input type="text" name="rname" value="" placeholder="Nombre" class="txt"/>
            <input type="text" name="cno" value="" placeholder="Número teléfono" class="txt"/>
            <input type="text" name="emailid" value=""  placeholder="Correo" class="txt"/>
            <input type="text" name="un" value="" placeholder="Usuario" class="txt"/>
            <input type="text" name="ps" value="" placeholder="Contraseña" class="txt"/>
            <input type="text" name="details" value="" placeholder="Detalles" class="txt"/>
            <input type="submit"  class="btn"/>
            <%
                if (request.getParameter("msg") != null) {
                    out.println(request.getParameter("msg"));
                }

            %>
            <BR>
            <a href="index.jsp" style="color:white;text-decoration:none;">Home</a>
        </form>
    </body>
</html>
