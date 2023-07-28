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
                            <td colspan="4" class="tdstyle">WORKER SIGNUP</td>
                        </tr>
                        <tr align='center' class="trstyle">
                            <td  class="tdstyle">worker ID</td>
                            <td class="tdstyle"><input type='text'  name="workerid" placeholder="enter id "  class='text_field'></td>
                            <td class="tdstyle">Password</td>
                            <td class="tdstyle"><input type='password'  name="pwd" placeholder="enter password "  class='text_field'></td>
                        </tr>
                        <tr align='center' class="trstyle">
                            <td class="tdstyle">worker name</td>
                            <td class="tdstyle"><input type='text' name="workername" placeholder="enter Username" class='text_field'></td> 

                            <td class="tdstyle">worker Contact</td>
                            <td class="tdstyle"><input type='text' name="contact" placeholder="enter Contact" class='text_field'></td>

                        </tr>
                        <tr align='center' class="trstyle">
                            <td class="tdstyle">worker type</td>
                            <td class="tdstyle"><input type='text' name="type" placeholder="28/11/02" class='text_field'></td>
                            <td class="tdstyle">worker experience</td>
                            <td class="tdstyle"><input type='text' name="experience" placeholder="Male/Female" class='text_field'></td>
                        </tr>
                        <tr align='center' class="trstyle">
                            <td class="tdstyle">Address</td>
                            <td class="tdstyle">
                                <textarea  name="address"  class="text_field"  ></textarea>
                            </td>
                            <!--                                <td class="tdstyle">upload photo</td>
                                                            <td class="tdstyle">
                                                                <input type="file" name="file" value="upload photo" class="text_field">
                                                            </td>-->
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
