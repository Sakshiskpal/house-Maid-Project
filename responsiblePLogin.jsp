<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style1.css"/>
        <title>Responsible page login</title>
    </head>
    <body>
        <main>
            <div class="center">

                <div class="sign-up-form login_form">
                    <form  action='responsibleCode.jsp' class="login-form">
                        <table class="table">
                            <div class="img"><img src="images/admin.png" alt="alt"/></div>
                            <tr align='center' class="trstyle login-tr">
                                <td  class="tdstyle login-td">User ID</td>
                                <td class="tdstyle login-td"><input type='text'  name="id" placeholder="enter id "  class='text_field'></td>
                            </tr>
                            <tr align='center' class="trstyle login-tr">
                                <td class="tdstyle login-td">Password</td>
                                <td class="tdstyle login-td"><input type='password'  name="pwd" placeholder="enter password "  class='text_field'></td>
                            </tr>
                            <td class="tdstyle login-td">Select Author</td>
                            <td class="tdstyle">
                                <select name="post" class='text_field'>
                                    <option>select Author</option>
                                    <option>Admin</option>
                                    <option>Operator</option>
                                </select>
                            </td>
                            <tr align='center' class="trstyle login-td ">
                                <td colspan='4' class="tdstyle login-td">
                                    <input type='submit'  value='Login'  class='buttonsign'  name="btn1">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </main>
    </body>
</html>

