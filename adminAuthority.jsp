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
        <style>
            header{
                background-image: none;
                background-color: yellowgreen;
                width: 100%;
                height: 100px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <header style="">
                <nav>
                    <div class="logo"><h1>ADMIN</h1></div>
                    <div class="menu">
                        <a href="addWorker.jsp">ADD WORKER</a>
                        <a href="addOperator.jsp">ADD OPERATOR</a>
                        <a href="setting.jsp">SETTING</a>
                        <a href="responsiblePLogin.jsp">LOGOUT</a>
                    </div>
                </nav>
            </header>
            <div class="left_side_image">
                <!--<img src="images/housecleaning.png" alt="alt" width="100%"/>-->
            </div>

        </div>
    </body>
</html>
