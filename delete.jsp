<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String userId = request.getParameter("id");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    PreparedStatement st = con.prepareStatement("select * from usertable where userid = ?");

    st.setString(1, userId);
     st.executeUpdate();
            response.sendRedirect("login.jsp");
  
    con.close();
%>
