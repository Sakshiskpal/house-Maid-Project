<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String userId = request.getParameter("id");
    String OldPass = request.getParameter("oldpwd");
    String newPass = request.getParameter("newpwd");
    String cNewpass = request.getParameter("cNewpwd");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    PreparedStatement st = con.prepareStatement("select * from usertable where userid = ? and password=?");

    st.setString(1, userId);
    st.setString(2 ,OldPass);
    ResultSet rs = st.executeQuery();
    if (rs.next()){
    if(newPass.equals(cNewpass)){
    st.setString(1, newPass);
    st.setString(2 ,userId);
    st.executeQuery();
    response.sendRedirect("login.jsp");
    }else{
    out.println("old and new pass doesnt match");
    }
            
        } else {
            response.sendRedirect("invalid id/password");
        }
//    st.executeQuery();
    con.close();
%>
