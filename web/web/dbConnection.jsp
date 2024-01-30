

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 Connection con=null;        
Statement stmt=null;        
Class.forName("com.mysql.cj.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint_management_system", "administrator", "*Barie123#");
    stmt=con.createStatement(); 
 }
 
 %>