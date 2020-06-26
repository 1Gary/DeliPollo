<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<a href="showfood.jsp"></a>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rasoi</title>
        <style>
            .k{
                width:180px;
                height:180px;
                border-radius:20px;
                
                
            }
            .box{
                width:200px;
                color:#05033d;
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
                color:#05033d;
                
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
    String cname=request.getParameter("cname");
        PreparedStatement pst=c.prepareStatement("select * from food where cname=?");
     pst.setString(1,cname);
        ResultSet rs=pst.executeQuery();
        while(rs.next()){   i++; %>
         
                    <td class="box">
                        <img src="<%=rs.getString("fimg")%>" class="k">
                        <a href="cfooddetails.jsp?fid=<%=rs.getString("fid")%>" class="an" >
                            <%=rs.getString("fname")%>
                        </a><BR>
                        
                        </td>
                <%  if(i==5)
          {
          out.println("</tr><tr>");
          }            }
        
        
        
        
%>  </tr>  </table>
    </body>
</html>
