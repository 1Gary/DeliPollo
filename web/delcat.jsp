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
        int cid;
        cid=Integer.parseInt(request.getParameter("cid"));
        
        PreparedStatement pst=c.prepareStatement("delete from category where cid=?");
        pst.setInt(1,cid);
        
        int y=pst.executeUpdate();
        if(y>0){
            
           
        response.sendRedirect("category.jsp?msg=Category Deleted");
        }
        else
        {
        response.sendRedirect("category.jsp?msg=Category Not Deleted");
        }
        
        
        
        %>
    </body>
</html>
