
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>student registration form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="myCSS/style.css">
  
  
  </head>
<body>
          <%@include file="myHTML/home_page.html" %>
      
  <div class="container">
                        <div >
                        <h2>Student Registration Form</h2>
                        </div>
      
    <form class="form-horizontal" method="post" action="Registration_Form_Controller">
      
      
          <div class="form-group">
                    <label class="control-label col-md-2" for="studentID">Student ID:</label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="studentID" placeholder="Enter id" required="">
                </div>
          </div>
     <div class="form-group">
          <label class="control-label col-md-2" for="studentName">Student Name:</label>
           <div class="col-md-6">
          <input type="text" class="form-control" name="studentName" placeholder="Enter full name" required="">
         </div>
     </div>    
     <div class="form-group">
          <label class="control-label col-md-2" for="department">Department:</label>     
         <div class="col-md-6">
      <select class="form-control" id="department" name="department">
        <option>CSE</option>
        <option>EEE</option>
        <option>CV</option>
        <option>TE</option>
        <option>MIS</option>
        <option>CE</option>
        <option>MCT</option>
        <option>NFE</option>
         <option>MBA</option>
          <option>BBA</option>      
           <option>LLB</option>        
            <option>B. Pharm</option>
        
              </select>
         </div>
     </div>  
      
                      
                   <div class="form-group">
                       <label class="control-label col-md-2" for="section">Section:</label>
                       <div class="col-md-2">
                           <input type="text" class="form-control" name="section" placeholder=" Example : A">
                       </div>
                            <label class="control-label col-md-2" for="batch">Batch No:</label>
                             <div class="col-md-2">
                                 <input type="text" class="form-control" name="batch" placeholder="Example : 26th">
                           </div>
                        </div>
                   


    <div class="form-group">
      <label class="control-label col-md-2" for="email">Email:</label>
      <div class="col-md-6">
          <input type="email" class="form-control" name="email" placeholder="Exapmple:  ahmed@diu.edu.bd" required="">
      </div>
    </div>
      
      <div class="form-group">
      <label class="control-label col-md-2" for="UserName">User Name:</label>
      <div class="col-md-6">
          <input type="text" class="form-control" name="UserName" placeholder="enter user name" required="">
      </div>
    </div>
      
    <div class="form-group">
      <label class="control-label col-md-2" for="password">Password:</label>
      <div class="col-md-6">          
          <input type="password" class="form-control" name="password" placeholder="Enter password" required="">
      </div>
    </div>
    
        <div>
                <label class="radio-inline col-md-offset-4">
                    <input type="radio" name="position" value="CR" >CR
                </label>
            <label class="radio-inline col-md-offset-2">
                    <input type="radio" name="position" value="Not CR">Not CR
                </label>
                
          </div>
        
    
      
    <div class="form-group">        
      <div class="col-md-offset-2 col-md-6">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>
   
            
 </body>
</html>

