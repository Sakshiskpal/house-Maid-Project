<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
    String userid = request.getParameter("userid");
    String password = request.getParameter("pwd");
    String username = request.getParameter("username");

    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String pincode = request.getParameter("pin");
    String city = request.getParameter("city");
    String contact = request.getParameter("contact");
//     String complain=request.getParameter("compalain");
//     String comDate=request.getParameter("date");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    PreparedStatement st = con.prepareStatement("insert into usertable values(?,?,?,?,?,?,?,?,?)");
    st.setString(1, userid);
    st.setString(2, password);
    st.setString(3, username);
    st.setString(4, gender);
    st.setString(5, email);
    st.setString(6, address);
    st.setString(7, pincode);
    st.setString(8, city);
    st.setString(9, contact);
    st.executeUpdate();
    response.sendRedirect("login.jsp");
    con.close();
%>