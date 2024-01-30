

<%@page import="java.sql.*"%>
<%@page import="model_class.DBconnecton"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Admin Information  </title>
    </head>
    <body>
        
        
           <% response.setHeader("pragma", "no-cache");
        response.setHeader("cache-controll", "no-cache,no-store,must-revalidate");
        response.setDateHeader("Expires",-1);
        %>
    <%
    if((session.getAttribute("name") == null)||(session.getAttribute("name")==""))
    {
  %>   
    you are not logged in <br>
    <a href="Admin_Login_Form.jsp"> please login </a>>   
    <% }
else {
%>

    <% Connection con=null;
       Statement st=null;
        ResultSet rs=null;
        String sql = "select * from admin_info " ;
        String adminName="";
        String pass="";
        con=DBconnecton.creatConnection();
        st=con.createStatement();
        rs =st.executeQuery (sql);
        if (rs.next ()){
         adminName=rs.getString("name");
         pass=rs.getString("password");
        }
        st.close();
        rs.close();
        con.close();
    %> 
    
        
          <%@include file="myHTML/adminHomePage.html" %>
          
          
          
        <div class="container">
                <div class="well-lg">
                    <div class="text-primary col-lg-offset-2"> <h3 ><b><img height="30px" width="40px" src="myCSS/Admin.png"> Admin Information</b></b></h3></div>
                  <div class=" col-lg-offset-3">  <p><b>User Name : </b><%=adminName %></p></div>
                  <div class=" col-lg-offset-3"> <p><b>Password :</b><%= pass%> </p></div>
                </div>
                      
        <form class="form-horizontal" method="post" action="Admin_info_Update">
            
            <div class="text-primary col-lg-offset-2"> <h3><img height="30px" width="40px" src="myCSS/Admin.png"> <b>Reset Admin Information</b></h3></div>
             
             <div class="form-group well-lg">
                 <div class="col-md-10 col-lg-offset-2"> 
                     <label class="control-label col-md-2" for="section">User Name</label>
                      <div class="col-md-3">
                          <input type="text" class="form-control" name="adminName" placeholder="re enter name" required="">
                      </div>
                 </div>
                     <div class="col-md-10 col-lg-offset-2 well-lg">
                        <label class="control-label col-md-2" for="batch">Password</label>
                          <div class="col-md-3">
                              <input type="text" class="form-control" name="password" placeholder="re enter password" required="" >
                         </div>
                     </div>  
           <div class="col-md-offset-4 col-md-6">
            <button type="submit" class="btn btn-primary" name="reset"> Reset</button> 
             </div>
          </div>    
        </form>
          
          
          
   
<%}%>     

    </body>
</html>
