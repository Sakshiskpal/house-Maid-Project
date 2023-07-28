<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>HouseMaid</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="logo">
                    <h1>HOUSE MAID</h1>
                </div>
                <div class="menu">
                    <a href="#">HOME</a>
                    <a href="#">ABOUT</a>
                    <a href="#">SERVICES</a>
                    <a href="#">WORKER</a>
                    <a href="#">CONTACT</a>
                    <a href="userSignUp.jsp">SIGN UP</a>
                </div>
            </nav>
            <div class="center">
                <div class="sign-up-form login_form">
                    <form  action='passwordsetting.jsp' class="login-form">
                        <table class="tablestyle">
                            <tr align="center" class="trstyle login-tr">
                                <td colspan="4" class="tdstyle login-td">SIGNUP</td>
                            </tr>
                            <tr align='center' class="trstyle logi-tr">
                                <td  class="tdstyle login-td">User ID</td>
                                <td class="tdstyle login-td"><input type='text'  name="id" placeholder="enter id "  class='text_field'></td>
                                 </tr>
                                 <tr align='center' class="trstyle logi-tr">
                                <td class="tdstyle login-td">Old Password</td>
                                <td class="tdstyle login-td"><input type='password'  name="oldpwd" placeholder="enter password "  class='text_field'></td>
                            </tr>
                            <tr align='center' class="trstyle logi-tr">
                                <td class="tdstyle login-td">New Password</td>
                                <td class="tdstyle login-td"><input type='password'  name="newpwd" placeholder="enter password "  class='text_field'></td><!-- comment -->
                            </tr>
                            <tr align='center' class="trstyle logi-tr">
                                <td class="tdstyle login-td">Confirm Password</td>
                                <td class="tdstyle login-td"><input type='password'  name="cNewpwd" placeholder="enter password "  class='text_field'></td><!-- comment -->
                            </tr>
                            <tr align='center' class="trstyle login-td ">
                                <td colspan='4' class="tdstyle login-td">
                                    <input type='submit'  value='Login'  class='buttonsign'  name="btn1">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </header>
    </body>
</html>

