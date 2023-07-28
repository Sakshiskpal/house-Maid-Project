<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
    String workerid = request.getParameter("workerid");
    String password = request.getParameter("pwd");
    String workername = request.getParameter("workername");
    String contact = request.getParameter("contact");
    String type = request.getParameter("type");
    String address = request.getParameter("experience");
    String experience = request.getParameter("address");
//    String file = request.getParameter("file");

//     String complain=request.getParameter("compalain");
//     String comDate=request.getParameter("date");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    PreparedStatement st = con.prepareStatement("insert into workertable values(?,?,?,?,?,?,?)");
    st.setString(1, workerid);
    st.setString(2, password);
    st.setString(3, workername);
    st.setString(4, contact);
    st.setString(5, type);
    st.setString(6, address);
    st.setString(7, experience);
//    st.setString(8, file);
    st.executeUpdate();
    response.sendRedirect("workerlogin.jsp");
    con.close();
%>