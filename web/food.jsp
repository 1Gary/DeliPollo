<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>rasoi</title>
        <style>
            .main{
                width:100%;
                height:600px;
            }
            .left{
                background: #23338e  ;
                width:43%;
                float:left;
                border-radius:20px;
                height:610px;
            }
            .right{
                position:relative;
                color:#eed053;
                background:  #f5400a ;
                padding:40px;
                border-style:solid;
                border-radius:20px;
                width:50%;
                float:right;
                height:510px;
            }
            .frm{
                position:relative;
                width:300px;
                margin:auto;
                border-style:solid;
                padding:30px;
                margin-top:100px; 
                text-align:center;
                background: #100e38 ;
                border-radius:20px;
                color:white;
                margin-left:100px;

            }
            .txt{
                width:280px;
                font-size:16px;
                color:green;
                margin-bottom:10px;
                border-radius:4px;
                padding:2px;

            }
            .btn{
                width:290px;
                font-size:16px;
                color:red;
                margin-bottom:10px;
                border-radius:4px;
                padding:2px;

            }
            .txt:focus{
                width:280px;
                font-size:16px;
                color:green;
                margin-bottom:10px;
                border-radius:4px;
                border-color:red;

            }
        </style>
    </head>
    <body>
        <h2> <%
            String un = session.getAttribute("userid").toString();
            out.println("Welocme " + un);
            String rname = session.getAttribute("rname").toString();
            %>
        </h2> <%@include file="rhead.jsp" %>
        <HR>
        <%@include file="rmenu.jsp" %>
        <div class="main">


            <div class="left">
                <form action="dofood.jsp" class="frm">
                    <h2>Food Item Details</h2>
                    <input type="text" name="fname" value="" placeholder="Enter Food Name" class="txt"/>
                    <input type="text" name="details" value="" placeholder="Enter Details" class="txt"/>
                    <input type="text" name="price" value=""  placeholder="Enter Price" class="txt"/>
                    <select name="cname" class="txt">
                        <option>Select Category</option>
                        <%
                            MyCon x = new MyCon();
                            Connection c = x.tcon();
                            Connection c1 = x.tcon();

                            PreparedStatement pst = c.prepareStatement("select * from category");
                            ResultSet rs = pst.executeQuery();
                while (rs.next()) {%>
                        <option><%=rs.getString("cname")%></option>

                        <%}

                        %>

                        <input type="text" name="rname" value="<%=rname%>" placeholder="Resturant Name" class="txt"/>

                        <input type="Submit"  class="btn"/>
                        <%
                            if (request.getParameter("msg") != null) {
                                out.println(request.getParameter("msg"));
                            }

                        %>

                </form>
            </div>
            <div class="right">
                FOOD DETAILS
                <table width="100%" border="1">
                    <%                PreparedStatement pst1 = c1.prepareStatement("select * from food");

                        ResultSet rs1 = pst1.executeQuery();
                while (rs1.next()) {%>
                    <tr><td><%=rs1.getString("fid")%></td>
                        <td><%=rs1.getString("fname")%></td>
                        <td><%=rs1.getFloat("price")%></td>
                        <td><%=rs1.getString("cname")%></td>
                        <td><img src="<%=rs1.getString("fimg")%>" width="50" height="50"></td>
                        <td><a href="delfood.jsp?fid=<%=rs1.getString("fid")%>">Delete</a></td>
                        <td><a href="upfood.jsp?fid=<%=rs1.getString("fid")%>">Update</a></td>
                        <td><a href="upimgfood.jsp?fid=<%=rs1.getString("fid")%>">Upload Image</a></td>
                    </tr>  

                    <%}


                    %>
                </table>
            </div>
        </div>
    </div>
    <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
        <a href="http://www.manalsoftech.com" style="color:white;text-decoration:none;">copyright @rasoi...online food ordering system</a>
    </div>
</body>
</html>
