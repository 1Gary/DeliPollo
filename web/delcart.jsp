<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rasoi/title>
    </head>
    <body>
        <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        String custid;
        custid=request.getParameter("custid");
        
        PreparedStatement pst=c.prepareStatement("delete from orders where custid=?");
        pst.setString(1,custid);
        
        int y=pst.executeUpdate();
        if(y>0){
            
           
        response.sendRedirect("cart.jsp?msg= Deleted");
        }
        else
        {
        response.sendRedirect("cart.jsp?msg=Category Not Deleted");
        }
        
        
        
        %>
    </body>
</html>
