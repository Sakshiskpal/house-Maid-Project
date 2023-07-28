<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String workercontact = request.getParameter("contact");
    String password = request.getParameter("pwd");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    PreparedStatement st = con.prepareStatement("select * from workertable where workercontact = ? and workerpassword=?");

    st.setString(1, workercontact);
    st.setString(2 ,password);
    ResultSet rs = st.executeQuery();
    if (rs.next()){
            Cookie ck = new Cookie("houseaMaidProject" , workercontact);
            ck.setMaxAge(1000000);
            response.addCookie(ck);
            session.setAttribute("CALL",workercontact);
            response.sendRedirect("afterlogin.jsp");
        } else {
            response.sendRedirect("workerlogin.jsp");
        }
//    st.executeQuery();
    con.close();
%>
