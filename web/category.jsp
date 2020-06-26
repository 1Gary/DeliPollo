<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>rasoi</title>
         <style>
            .p2{
                width:450px;
                margin:auto;
                margin-top:100px;
                background:purple;
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
        <h2> <%
     String un=session.getAttribute("userid").toString();
     out.println("Welocme "+un);
     %>
        </h2><%@include file="ahead.jsp" %>
        <HR>
     
        <%@include file="amenu.jsp" %>
        <BR>
        <form action="doaddcat.jsp" class="p2">
           Add Category
            <input type="text" name="cname" placeholder="Enter Category "  class="t1"/>
           
            <input type="submit"  class="t2" value="Add Category"/>
              <%
            if(request.getParameter("msg")!=null)
            out.println(request.getParameter("msg"));
        
        %>
        </form>
        <Br>
        <table border="1" style="width:500px;margin:auto;" >
            <tr><td>Category ID</td>
                <td>Category Name</td>
            </tr>
           <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
    
        PreparedStatement pst=c.prepareStatement("select * from category");
     
        ResultSet rs=pst.executeQuery();
        while(rs.next()){%>
           <tr><td><%=rs.getInt("cid")%></td>
                <td><%=rs.getString("cname")%></td>
                <td><a href="delcat.jsp?cid=<%=rs.getInt("cid")%>">Delete</a></td>
                <td><a href="upcat.jsp?cid=<%=rs.getInt("cid")%>">Update</a></td>
                
            </tr>  
           
        <%}
        
        
        
        
        %>
         <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
    <a href="http://www.manalsoftech.com" style="color:white;text-decoration:none;">copyright @rasoi...online food ordering system</a>
</div>
    </body>
</html>
