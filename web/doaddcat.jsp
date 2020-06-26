<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DeliPollo</title>
    </head>
    <body>
        <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        String cname;
        cname=request.getParameter("cname");
        
        PreparedStatement pst=c.prepareStatement("insert into category(cname) values(?)");
        pst.setString(1,cname);
        
        int y=pst.executeUpdate();
        if(y>0){
            
           
        response.sendRedirect("category.jsp?msg=Category Added");
        }
        else
        {
        response.sendRedirect("category.jsp?msg=Category Not Added");
        }
        
        
        
        %>
    </body>
</html>
