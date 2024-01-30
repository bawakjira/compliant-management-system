
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  
   <body>
     
<% 
    if((session.getAttribute("userid")==null)||(session.getAttribute("userid")==""))
    {
    %>
    you are not logged in. please <a href="student_login_form.jsp"> login here</a> 
    <% } else {


        String sName="";
        String section="";
        String dept="";
        String batch="";
        String email="";
        String uName="";
        String pass="";
        String positn="";
        String studentId="";
       
    Connection con=null;        
    Statement stmt=null;        
    Class.forName("com.mysql.cj.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint_management_system", "administrator", "*Barie123#");
    stmt=con.createStatement(); 

    ResultSet rs;
    rs=stmt.executeQuery("select * from student_registration_info where userName='"+session.getAttribute("userid")+"' ");
    while(rs.next()){

        sName=rs.getString("studentName");
        studentId=rs.getString("studentId");
        dept=rs.getString("department");
        section=rs.getString("section");
        batch=rs.getString("batch");
        email=rs.getString("email");
        uName=rs.getString("userName"); 
        pass=rs.getString("password");
}
 
%>
