<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String adminId = request.getParameter("id");
    String pass = request.getParameter("pwd");
    String select = request.getParameter("post");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    if (select.equalsIgnoreCase("Admin")) {
    PreparedStatement st = con.prepareStatement("select * from admin_table where adminid = ? and adminpassword=?");
    st.setString(1, adminId);
    st.setString(2, pass);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
        session.setAttribute("CALL", adminId);
            response.sendRedirect("adminAuthority.jsp");
    } else {
        response.sendRedirect("resposiblePLogin.jsp");
    }
    }
    if (select.equalsIgnoreCase("operator")) {
    PreparedStatement st = con.prepareStatement("select * from operator_table where opId = ? and password=?");
    st.setString(1, adminId);
    st.setString(2, pass);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
        session.setAttribute("CALL", adminId);
            response.sendRedirect("operatorAuthority.jsp");
    } else {
        response.sendRedirect("responsiblePLogin.jsp");
    }
    }
//    st.executeQuery();
    con.close();
%>

