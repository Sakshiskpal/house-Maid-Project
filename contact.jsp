<%-- 
    Document   : home
    Created on : 18-Mar-2023, 7:15:56 pm
    Author     : Hp
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <table class="tablestyle">
            <tr class="trstyle">
                <td class="tdstyle"><a href="home.jsp"></a></td>
                <td class="tdstyle"><a href="home.jsp">HOME</a></td>
                <td class="tdstyle"><a href="about.jsp">ABOUT</a></td>
                <td class="tdstyle"><a href="services.jsp">SERVICES</a></td>
                <td class="tdstyle"><a href="complain.jsp">CONTACT</a></td>
                
                <td class="tdstyle"><a href="contact.jsp">LOGOUT</a></td><!-- comment -->
            </tr>
        </table>
        <div class="container">
            <div class="left_side_image">
                <img src="images/undraw_Grades_re_j7d6.svg" alt="alt" width="700px"/>
            </div>
            <div class="login_form">
                <form action="" method="">
                    <h2>Login USER</h2>
                    <input type="text" class="text_field" placeholder="Enter Your Name" name="name"><br>
                    <input type="email" class="text_field" placeholder="Enter Your Email or phone" name="mail"><br>
                    <textarea class="text_field" placeholder="Type...." name="complain"></textarea><br>
                    <input type="submit" class="button" name="submit">
                    <a href="SignUp.jsp" target="target">Don't have any Account ?</a>
                </form>
            </div>
        </div>
    </body>
</html>
