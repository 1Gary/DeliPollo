<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rasoi</title>
        <style>
            .box{
                width:200px;
                background:orangered;
                color:white;
                border-radius:10px;
                padding:4px;
            }
             .box:hover{
                width:200px;
                background:blueviolet;
                color:white;
                border-radius:10px;
            }
            .an{
                text-decoration:none;
                color:white;
                
            }
        </style>

    </head>
    <body>
        <%@include file="cuhead.jsp" %>
      <table  align="center" style="width:1000px;text-align: center;font-size:24px;margin-top:100px;" cellspacing="20" >
          
             <tr>
           <%
               int i=1;
        MyCon x=new MyCon();
        Connection c=x.tcon();
    
        PreparedStatement pst=c.prepareStatement("select * from category");
     
        ResultSet rs=pst.executeQuery();
        while(rs.next()){   i++; %>
         
                    <td class="box">
                        <a href="cshowfood.jsp?cname=<%=rs.getString("cname")%>" class="an" >
                        <%=rs.getString("cname")%>
                        </a>
                        </td>
                <%  if(i==5)
          {
          out.println("</tr><tr>");
          }            }
        
        
        
        
%>  </tr>  </table>
    </body>
</html>
