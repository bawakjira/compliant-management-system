<%--     Document   : student_success_log
    Created on : Jun 9, 2017, 10:43:41 PM
    Author     : farzana
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
<head>

	<title>Stduent Home page </title>

        <link rel="stylesheet" href="myCSS/style.css">
</head>
<body>

    <%
        response.setHeader("pragma", "no-cache");
        response.setHeader("cache-controll", "no-cache,no-store,must-revalidate");
        response.setDateHeader("Expires",-1);
        %>
    <%
    if((session.getAttribute("userid") == null)||(session.getAttribute("userid")==""))
    {
  %>   
    you are not logged in <br>
    <a href="index.jsp"> please login here </a>  
    <% }
else {
%>

       <%@include file="myHTML/student_home_page.html" %>

 <%    Connection con=null;
       Statement st=null;
        ResultSet rs=null;
        String studentID=null;

       Class.forName("com.mysql.cj.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint_management_system", "administrator", "*Barie123#");
        String sql = "select studentID  from student_registration_info where userName='"+session.getAttribute("userid")+"' ";

      st = con.createStatement();
     rs = st.executeQuery(sql);
     if( rs.next() ){ 
            studentID = rs.getString("studentId");
        }
     st.close();
     rs.close();
     
        Connection con1=null;
        PreparedStatement ps=null;
        Statement stmt=null;
        ResultSet rs1=null;
        String complaintType=null;
        String complaintDetails=null;
        String complaintDate=null;
        String replymessage=null;
        String replyDate=null;
       List dataList=new ArrayList();
        Class.forName("com.mysql.cj.jdbc.Drive");
       con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint_management_system?zeroDateTimeBehavior=CONVERT_TO_NULL", "administrator", "*Barie123#");
    
    if (studentID != null) {
       
    String sql1 ="select student_complaints.complaintsType,student_complaints.comment,student_complaints.date,"
            + "reply_complaints.reply,reply_complaints.replydate from student_complaints,reply_complaints where student_complaints.sid=reply_complaints.sid and student_complaints.studentId='"+studentID+"' "; 
           ps=con1.prepareStatement(sql1); 
         rs1 = ps.executeQuery(sql1); 
        while(rs1.next()){
           
        dataList.add(rs1.getString("complaintsType"));
        dataList.add(rs1.getString("comment"));
        dataList.add(complaintDate=rs1.getString("date"));
        dataList.add(replymessage=rs1.getString("reply"));
        dataList.add(replyDate=rs1.getString("replydate"));
    }
        
  %>
  <div class="col-lg-offset-4 well-lg text-primary"> <h3><b> Submitted complaints List</b></h3></div>
  <%Iterator itr;
            
            for (itr=dataList.iterator(); itr.hasNext(); )
            {           
              %>
              <%-- welcome <%= session.getAttribute("userid") %>
                <a href="index.jsp">logout</a> -->
        --%>
<div class="container">
    <div class="list-group col-lg-10 col-lg-offset-1">
    <a href="#" class="list-group-item active">
      <h4 class="list-group-item-heading">Complaint Category : <%=itr.next()%> </h4>
        </a>
    <a href="#" class="list-group-item">
        <div class="list-group-item-heading"><p class="text-primary"><b>Complaint Details</b></p></div>
        <div class="list-group-item-text"><%=itr.next()%></div><br> 
        <div><p class="text-primary"><b> Submission Date:</b>  <%=itr.next()%></p> </div>
    </a>
    <a href="#" class="list-group-item">
        <div class="list-group-item-heading text-primary"><p class="text-primary"><b>Reply From Admin</b></p> </div>
     <div class="list-group-item-text"><%=itr.next()%></div><br>
     <div ><p class="text-primary"><b> Reply Date: </b> <%=itr.next()%> </p></div>
    </a>
  </div>
</div>
<%}%>
<%
  
}
}

%>

</body>
</html>
