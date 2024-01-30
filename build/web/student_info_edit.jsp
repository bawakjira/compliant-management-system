

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@include file="Student_info_query.jsp" %>


<html>
    <head>
        <title>Student information</title>
    </head>
    <body>
                <%@include file="myHTML/student_home_page.html" %>


         <div class="container">
                       

             <div class="well-lg"><h3><b><img class="img-circle" height="30px" width="40px" src="myCSS/user.jpg"> Account Information</b></h3></div>
    <form class="form-horizontal" method="post" action="user_information_edited.jsp">
      
      
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
          <label class="control-label col-md-2" for="studentName">Department:</label>
           <div class="col-md-6">
               <input type="text" class="form-control" name="department" value="<%=dept%>" >
         </div>
     </div>
                      
                   <div class="form-group">
                       <label class="control-label col-md-2" for="section">Section:</label>
                       <div class="col-md-2">
                           <input type="text" class="form-control" name="section" value="<%=section%>">
                       </div>
                            <label class="control-label col-md-2" for="batch">Batch No:</label>
                             <div class="col-md-2">
                                 <input type="text" class="form-control" name="batch" value="<%=batch%>">
                           </div>
                        </div>
                   


    <div class="form-group">
      <label class="control-label col-md-2" for="email">Email:</label>
      <div class="col-md-6">
          <input type="email" class="form-control" name="email" value="<%=email%>" >
      </div>
    </div>
      
      <div class="form-group">
      <label class="control-label col-md-2" for="UserName">User Name:</label>
      <div class="col-md-6">
          <input type="text" class="form-control" name="UserName"value="<%=uName%>" >
      </div>
    </div>
      
    <div class="form-group">
      <label class="control-label col-md-2" for="password">Password:</label>
      <div class="col-md-6">          
          <input type="text" class="form-control" name="password" value="<%=pass%>" >
      </div>
    </div>
 
       
      <div class="col-md-offset-2 col-md-6">
          <button type="submit" class="btn btn-info" name="edit" value="Edit"> Update</button> 
       </div>    
  </form>
</div>
      
      
      
      <%  
   }
 %>
 
    </body>
</html>
