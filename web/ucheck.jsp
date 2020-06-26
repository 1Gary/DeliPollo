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
        String un,ps;
        un=request.getParameter("un");
        ps=request.getParameter("ps");
        PreparedStatement pst=c.prepareStatement("select * from rest where un=? and ps=? and status='true'");
        pst.setString(1,un);
        pst.setString(2,ps);
        ResultSet rs=pst.executeQuery();
        if(rs.next()){
             session.setAttribute("rname",rs.getString("rname"));
            session.setAttribute("userid",un);
        response.sendRedirect("resthome.jsp");
        }
        else
        {
        response.sendRedirect("ulogin.jsp?msg=Invalid Login Details");
        }
        
        
        
        %>
         <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
    <a href="http://www.manalsoftech.com" style="color:white;text-decoration:none;">copyright @rasoi...online food ordering system</a>
</div>
    </body>
</html>
