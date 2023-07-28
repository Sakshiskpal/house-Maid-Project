<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>HouseMaid</title>
    </head>
    <body>
        <%
        Cookie ck[] = request.getCookies();
        String value = "";
        if(ck!=null){
        for(int i = 0;i<ck.length;i++){
                if(ck[i].getName().equals("houseMaidProject")){
                value = ck[i].getValue();
            }
            }
            }
        %>
        <header>
            <nav>
                <div class="logo">
                    <h1>HOUSE MAID</h1>
                </div>
                <div class="menu">
                    <a href="index.jsp">HOME</a>
                    <a href="about.jsp">ABOUT</a>
                    <a href="services">SERVICES</a>
                    <a href="viewWorker.jsp">WORKER</a>
                    <a href="contact.jsp">CONTACT</a>
                    <a href="userSignUp.jsp">SIGN UP</a>
                </div>
            </nav>
            <div class="center">
                <div class="sign-up-form login_form">
                    <form  action='userLogin.jsp' class="login-form">
                        <table class="tablestyle">
                            <tr align="center" class="trstyle login-tr">
                                <td colspan="4" class="tdstyle login-td">SIGNUP</td>
                            </tr>
                            <tr align='center' class="trstyle logi-tr">
                                <td  class="tdstyle login-td">User ID</td>
                                <td class="tdstyle login-td"><input type='text'  name="id" placeholder="enter id " value="<%=value%>" class='text_field'></td>
                                 </tr>
                                 <tr align='center' class="trstyle logi-tr">
                                <td class="tdstyle login-td">Password</td>
                                <td class="tdstyle login-td"><input type='password'  name="pwd" placeholder="enter password "  class='text_field'></td>
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

