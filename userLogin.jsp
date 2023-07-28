<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String userId = request.getParameter("id");
    String pass = request.getParameter("pwd");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    PreparedStatement st = con.prepareStatement("select * from usertable where userid = ? and password=?");

    st.setString(1, userId);
    st.setString(2 ,pass);
    ResultSet rs = st.executeQuery();
    if (rs.next()){
            Cookie ck = new Cookie("houseaMaidProject" , userId);
            ck.setMaxAge(1000000);
            response.addCookie(ck);
            session.setAttribute("CALL",userId);
            response.sendRedirect("afterlogin.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
//    st.executeQuery();
    con.close();
%>
