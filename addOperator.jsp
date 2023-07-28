<%-- 
    Document   : addWorker
    Created on : 30-Mar-2023, 1:04:49 pm
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
            .center{
                background-color: lightseagreen;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="center">
                <div class="add-worker-form">
                    <form  action='addworkercode.jsp'>
                        <table class="tablestyle">
                            <tr align="center" class="trstyle">
                                <td colspan="4" class="tdstyle">Operator</td>
                            </tr>
                            <tr align='center' class="trstyle">
                                <td  class="tdstyle">operator ID</td>
                                <td class="tdstyle"><input type='text'  name="userid" placeholder="enter id "  class='text_field'></td>
                                <td class="tdstyle">Password</td>
                                <td class="tdstyle"><input type='password'  name="pwd" placeholder="enter password "  class='text_field'></td>
                            </tr>
                            <tr align='center' class="trstyle">
                                <td class="tdstyle">Operator name</td>
                                <td class="tdstyle"><input type='text' name="username" placeholder="enter worker name" class='text_field'></td> 

                                <td class="tdstyle">operator Type</td>
                                <td class="tdstyle"><input type='text' name="contact" placeholder="Enter Worker Type" class='text_field'></td>
                            </tr>
                            <tr align='center' class="trstyle">
                                <td class="tdstyle">operator</td>
                                <td class="tdstyle"><input type='text' name="experience" placeholder="Worker Ecperience" class='text_field'>
                                </td>
                                <td class="tdstyle">operator Gender</td>
                                <td class="tdstyle"><input type='text' name="gender" placeholder="Male/Female" class='text_field'></td>
                            </tr>
                            <tr align='center' class="trstyle">
                                <td class="tdstyle">operator Number</td>
                                <td class="tdstyle"><input type='number' name="number" placeholder="Worker contact " class='text_field'>
                                </td>
                            </tr>
                            <tr align='center' class="trstyle">
                                <td colspan='4' class="tdstyle">
                                    <input type='submit'  value='submit'  class='buttonsign'  name="btn1">
                                    <input type='reset'  value='clear' class='buttonsign' name="btn2">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
    </body>
</html>
