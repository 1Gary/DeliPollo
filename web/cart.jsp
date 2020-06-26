<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manal:Rasoi</title>
    </head>
    <body>
          <%@include file="uhead.jsp" %>
        <table border=1 align=center style="width:800px;border-radius:8px;">
            
        <%
            String custid=null;
        if(session.getAttribute("custid")!=null)
        custid=session.getAttribute("custid").toString();
        else
        {custid="cust"+(int)(Math.random()*10000);
        session.setAttribute("custid",custid);
        }
        String  fid=null;
        if(request.getParameter("fid")!=null)
        fid=request.getParameter("fid");
        int qty=Integer.parseInt(request.getParameter("qty"));
float t=0;
          MyCon x=new MyCon();
        Connection c=x.tcon();
    Connection c1=x.tcon();
        PreparedStatement pst=c.prepareStatement("insert into orders(custid,fid,doo,qty) values(?,?,sysdate(),?)");
        pst.setString(1,custid);
        pst.setString(2, fid);
        pst.setInt(3,qty);
        int r=pst.executeUpdate();
        if(r>0)
        {
            PreparedStatement pst1=c1.prepareStatement("select * from food,orders where food.fid=orders.fid and custid=?"); 
            pst1.setString(1,custid);
            ResultSet rs=pst1.executeQuery();
            while(rs.next())
            {
            
          %>  
            <tr>
             <td><%=custid%>   </td>
             <td><%=fid%></td>
              <td><%=rs.getString("fname")%>   </td>
              <td><%=rs.getFloat("price")%>   </td>
              <td><%=rs.getFloat("qty")%>   </td>
              <%
              t=t+(rs.getFloat("price")* rs.getFloat("qty"));
              %>
              <td width="100"><img src="<%=rs.getString("fimg")%>" width="100" height="100"></td>
              <td><a href="delcart.jsp?custid=<%=custid%>">delete</a></td>
            </tr>
          <%  }
        
         }
     else
        out.println("sdfsd");
%>
<tr>
    <td colspan="5">Total <%=t%></td>
    <td colspan="2"><a href="csfood.jsp">Continue</a> 
            <a href="checkout.jsp">Checkout</a>
        </td>
</tr>
        </table>
     <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
    <a href="http://www.manalsoftech.com" style="color:white;text-decoration:none;">copyright @rasoi...online food ordering system</a>
</div>
    </body>
</html>
