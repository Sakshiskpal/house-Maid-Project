<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
    String wid = request.getParameter("userid");
    String wpass = request.getParameter("pwd");
    String wName = request.getParameter("username");

    String wType = request.getParameter("gender");
    String wExperience = request.getParameter("email");
    String wNumber = request.getParameter("address");
    String wGender = request.getParameter("pin");
    String wSalary = request.getParameter("city");
//    String contact = request.getParameter("contact");
//     String complain=request.getParameter("compalain");
//     String comDate=request.getParameter("date");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st = con.prepareStatement("insert into workertable values(?,?,?,?,?,?,?,?)");
    
    st.setString(1,wid);
    st.setString(2,wpass);
    st.setString(3,wName);
    st.setString(4,wType);
    st.setString(5,wExperience);
    st.setString(6,wNumber);
    st.setString(7,wGender);
    st.setString(8,wSalary);
    st.executeUpdate();
    con.close();
%>