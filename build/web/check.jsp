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
        PreparedStatement pst=c.prepareStatement("select * from admin where un=? and ps=?");
        pst.setString(1,un);
        pst.setString(2,ps);
        ResultSet rs=pst.executeQuery();
        if(rs.next()){
            
            session.setAttribute("userid",un);
        response.sendRedirect("adminhome.jsp");
        }
        else
        {
        response.sendRedirect("login.jsp?msg=Invalid Login Details");
        }
        
        
        
        %>
    </body>
</html>
