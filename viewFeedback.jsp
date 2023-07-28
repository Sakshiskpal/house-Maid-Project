<%-- 
    Document   : setting
    Created on : 05-Apr-2023, 8:35:47 am
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
        <link rel="stylesheet" href="style2.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header
            <div class="header-setting"><h2>House maid</h2></div>
    </header>
    <main>
        <div class="main-seeting">
            <div class="section-1">
                <div class="settings-option" name="menu"><a href="#" name="user">Users</a></div>
                <div class="settings-option" name="menu"><a href="#" name="worker">View Workers</a></div>
                <div class="settings-option" name="menu"><a href="#" name="complain">View complains</a></div>
                <div class="settings-option" name="menu"><a href="#" name="feedback">View Feedback</a></div>
                <div class="settings-option" name="menu"><a href="#" name="contacts">View contacts</a></div>
            </div>
            <div class="section-2">
                <div class="details">
                    <h2><%%></h2>
                    <div class="view">
                        <!--<table>-->
                        <!--<tr>-->
                        <%
                            String select = request.getParameter("menu");
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
//                            if (select.equalsIgnoreCase("users")) {
                                PreparedStatement st = con.prepareStatement("select * from feedbacktable");
                                ResultSet rs = st.executeQuery();
                                ArrayList list1 = new ArrayList();
                                ArrayList list2 = new ArrayList();
                                while (rs.next()) {
                                    list1.add(rs.getString(2));
                                    list2.add(rs.getString(3));
                                 
                                }
                        %>
                        <!--<td>sakshi shankhpal</td><td>email@gmail.com</td><td><button>Delete</button></td>-->
                        <%
                            for (int i = 0; i < list1.size(); i++) {
                        %>
                        <div class="item">
                            <div class="user_img"></div>
                            <p><%=list1.get(i)%></p> 
                            <p><%=list2.get(i)%></p> 
                         
                            <div class="book-worker"><input type="submit" value="book" name="book">
                            </div>
                        </div>
                        <%
                                }
//                            }
                        %>
                        <!--</tr>-->
                        <!--</table>-->
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="footer-setting">footer</div>
    </footer>
</body>
</html>
