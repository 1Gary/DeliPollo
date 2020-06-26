<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>rasoi</title>
    </head>
    <body>
        
        <h2> <%
     String un=session.getAttribute("userid").toString();
     out.println("Bienvenido "+un);
     %>
        </h2> <%@include file="ahead.jsp" %>
        <HR>
     
        <%@include file="amenu.jsp" %>
        <BR>
         <table border="1" style="width:500px;margin:auto;" >
            <tr><td>Category ID</td>
                <td>Category Name</td>
            </tr>
           <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
    
        PreparedStatement pst=c.prepareStatement("select * from rest where status ='false'");
     
        ResultSet rs=pst.executeQuery();
        while(rs.next()){%>
           <tr><td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("rname")%></td>
                <td><%=rs.getString("cno")%></td>
                <td><%=rs.getString("emailid")%></td>
                <td><%=rs.getString("details")%></td>
             <td><a href="delrest.jsp?id=<%=rs.getInt("id")%>">Remove Request</a></td>
               
                <td><a href="uprest.jsp?id=<%=rs.getInt("id")%>">Approve</a></td>
            </tr>  
           
        <%}
        
        
        
        
        %>
    
        <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
    <a href="http://www.manalsoftech.com" style="color:white;text-decoration:none;">copyright @rasoi...online food ordering system</a>
</div>
    </body>
</html>
