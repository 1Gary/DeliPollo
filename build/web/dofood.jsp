<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rasoi</title>
    </head>
    <body>
        <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        String rname,fid,cname,details,fname;
        float price=Float.parseFloat(request.getParameter("price"));
         fname=request.getParameter("fname");
        rname=request.getParameter("rname");
        cname=request.getParameter("cname");
        fid="ID"+(int)(Math.random()*1000);
        details=request.getParameter("details");
        PreparedStatement pst=c.prepareStatement("insert into food(fid,fname,details,cname,price,rname) values(?,?,?,?,?,?)");
        pst.setString(1,fid);
        pst.setString(2,fname);
        pst.setString(3,details);
         pst.setString(4,cname);
        pst.setFloat(5,price);
        pst.setString(6,rname);
        
        
        int y=pst.executeUpdate();
        if(y>0){
            
           
      response.sendRedirect("food.jsp?msg=Food Details Added");
        }
        else
        {
        response.sendRedirect("food.jsp?msg=Food Details not Added");
        }
        
        
        
        %>
    </body>
</html>
