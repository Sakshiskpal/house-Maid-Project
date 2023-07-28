<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String userid = request.getParameter("userid");
    String password = request.getParameter("pwd");
    String username = request.getParameter("username");
    
    
%>