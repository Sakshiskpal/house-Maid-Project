<%-- 
    Document   : viewWorker
    Created on : 29-Mar-2023, 12:31:33 am
    Author     : Hp
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>view worker details</title>
        <style>
            .container{
                width: 100%;
                display: flex;
                flex-wrap: wrap;
                flex-direction: column;
                justify-content: space-between;
                align-items: center;
                /*background-color: red;*/
            }
            .row{
                align-content: center;
            }
            .data_items{
                display: flex;
                flex-wrap: wrap;
                flex-direction: column;
                /*justify-content: space-between;*/
                align-items: center;
                background-color: #fff;
                opacity: 0.8;
                width: 1200px;
                height: 100%;
                /*border: 1px solid black;*/
                /*border-radius: 50px;*/
            }
            .data_items .item{
                display: flex;
                justify-content: space-evenly;
                align-items: center;
                text-align: center;
                margin: 10px;
                width: 1000px;
                height: 150px;
                border: 2px solid #00cc00;
                box-shadow: 0.5;
                border-radius: 80px;
                background-color: transparent;
                /*opacity: 0.2;*/
                color: #00cc00;
            }
            .data_items .item .user_img{
                width: 100px;
                height: 100px;
                border-radius: 50%;
                background-color: yellow;
            }
            p{
                color: #00cc00;
                font-size: 20px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <header>
            <nav>
                <div class="logo">
                    <h1>HOUSE MAID</h1>
                </div>
                <div class="menu">
                    <a href="afterlogin.jsp">HOME</a>
                    <a href="about.jsp">ABOUT</a>
                    <a href="services.jsp">SERVICES</a>
                    <a href="viewWorker.jsp">WORKER</a>
                    <a href="Contact.jsp">CONTACT</a>
                    <a href="destroySession.jsp">LOGOUT</a>
                </div>
            </nav>

            <div class="container">
                <div class="row">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
                        PreparedStatement st = con.prepareStatement("select * from workertable");
                        ResultSet rs = st.executeQuery();
                        ArrayList list1 = new ArrayList();
                        ArrayList list2 = new ArrayList();
                        ArrayList list3 = new ArrayList();
                        ArrayList list4 = new ArrayList();
                        ArrayList list5 = new ArrayList();
//                        ArrayList list6 = new ArrayList();
                       
                        while (rs.next()) {
                            list1.add(rs.getString(3));
                            list2.add(rs.getString(4));
                            list3.add(rs.getString(5));
                            list4.add(rs.getString(6));
                            list5.add(rs.getString(7));
                           
                        }
                    %>

                    <div class="data_items">
                        <%
                            for (int i = 0; i < list1.size(); i++) {
                        %>
                        <div class="item">
                            <div class="user_img"></div>
                            <p><%=list1.get(i)%></p> 
                            <p><%=list2.get(i)%></p> 
                            <p><%=list3.get(i)%></p> 
                            <p><%=list4.get(i)%></p> 
                            <p><%=list5.get(i)%></p>
                        
                            <div class="book-worker"><input type="submit" value="book" name="book">
                                    </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>


        </header>
    </body>
</html>
