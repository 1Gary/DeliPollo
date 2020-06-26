<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>

<!DOCTYPE html>
<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            .k{
                width:300px;
                height:300px;
                border-radius:15px;
                border-style:solid;
                
                
            }
            .k:hover{
                width:300px;
                height:300px;
                border-radius:15px;
                border-style:solid;
                border-color:red;
                
            }
            .btn{
                width:300px;
                background:#2A96D0;
                color:white;
                font-size:25px;
                padding:5px;
                border-style:none;
                border-radius:10px;
            }
            .btn:hover{
                width:300px;
                background:#15D7BA    ;
                color:white;
                font-size:25px;
                padding:5px;
                border-style:none;
                border-radius:10px;
            }
        </style>
  	
	<title>Rasoi| Manal</title>
</head>
    <body>
        <%@include file="uhead.jsp" %>
      <table  align="center" style="width:700px;text-align: center;font-size:24px;margin-top:100px;" cellspacing="20" >
          <TR>  
             
           <%
               int i=1;
        MyCon x=new MyCon();
        Connection c=x.tcon();
    String fid=request.getParameter("fid");
        PreparedStatement pst=c.prepareStatement("select * from food where fid=?");
     pst.setString(1,fid);
        ResultSet rs=pst.executeQuery();
        if(rs.next()){    %>
            
                    <td class="box">
                        <img src="<%=rs.getString("fimg")%>" class="k">
                        
                        </td>
                        <td valign="top">
                            <form action="cart.jsp">
                            <h2><%=rs.getString("fname")%></h2>
                            Rs. <%=rs.getFloat("price")%><BR>
                            <input type="number" min="1" max=999 name="qty" value="1"><BR>
                            <input type="hidden" name="fid" value="<%=rs.getString("fid")%>">
                            <br>
                            <input type=submit  value="Add to Cart" class="btn">
                            </form>
                        </td>
           
                              <%  }
        
        
        
        
%>    </tr> </table>
</div>
 <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
    <a href="http://www.manalsoftech.com" style="color:white;text-decoration:none;">copyright @rasoi...online food ordering system</a>
</div>
    </body>
</html>
