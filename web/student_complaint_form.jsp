
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.util.*" %>
 <%@include file="Student_info_query.jsp" %>
 <%@page import="java.util.Date" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>student complaints</title>
    </head>
    <body>
        <%@include file="myHTML/student_home_page.html" %>
    
         
<div class="container">
    
    <form class="form-horizontal" method="post" action="student_complaint_controller">
        <div class="well-lg "> <h3><b> Let Us Know your Complaints <img height="50px" width="80px" src="myCSS/smile2.jpg"></b> </h3></div>
      <div class="form-group">
                    <label class="control-label col-md-2" for="studentID">Student ID:</label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="studentID" value="<%=studentId%>" >
                </div>
          </div>
      <div class="form-group">
          <label class="control-label col-md-2" for="studentName">Student Name:</label>
           <div class="col-md-6">
               <input type="text" class="form-control" name="studentName" value="<%=sName%>">
         </div>
     </div>
         
      <div class="form-group">
          <label class="control-label col-md-2" for="department">Department:</label>
           <div class="col-md-6">
               <input type="text" class="form-control" name="department" value="<%=dept%>">
         </div>
     </div>

       <div class="form-group  ">
          <label class="control-label col-md-2 " for="complaint">Complaint Type : </label>     
         <div class="col-md-6">
             <select class="form-control " name="complaint" required="">
        <option>course</option>
        <option>exam</option>
        <option>campus</option>
        <option>hostel</option>
        <option>accounts</option>
        <option>library</option>
        <option>canteen</option>
        <option>vehicles</option>
        <option>teachers</option>
        <option>administrative</option>
        <option>other </option>
      </select>
         </div>
     </div><br> 
      
   <div class="form-group">
          <label class="control-label col-md-2" for="comment">Complaint Details:</label>
           <div class="col-md-6">
               <textarea class="form-control"  rows="6" cols="10" name="comment" required=""></textarea>
         </div>
    </div>
    <div>
   <%
   Date date =new Date();
   String currentDate=date.toString();
   out.print( "<h4 align=\"center\">" +currentDate+"</h4>");
   //request.setAttribute("Date",currentDate );
%>
   </div>
     <div>
            <div class="col-md-offset-7 col-md-6">
                <button type="submit" class="btn btn-info" name="submit" value="Submit"> Submit</button> 
            </div>    
     </div>    
   
   
      <%  
   }
 %>
   
   
  </form>
</div>
 
</body>
</html>