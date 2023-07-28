<%-- 
    Document   : header
    Created on : 30-Mar-2023, 10:10:00 am
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
    <style>
        header{
            background-image: none;
            background-color: yellowgreen;
            width: 100%;
            height: 100px;
        }
    </style>
    <body>
        <header>
        <nav>
                <div class="logo">
                    <h1>HOUSE MAID</h1>
                </div>
                <div class="menu">
                    <a href="addWorker.jsp">ADD WORKER</a>
                        <a href="addOperator.jsp">ADD OPERATOR</a>
                        <a href="setting.jsp">SETTING</a>
                        <a href="responsiblePLogin.jsp">LOGOUT</a>
                </div>
            </nav>
        </header>
    </body>
</html>
