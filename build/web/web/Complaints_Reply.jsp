
<%@page import="model_class.DBconnecton"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
  <title> Admin Reply Complaint  </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  </head>
  
<body>
        <%@include file="myHTML/adminHomePage.html" %>
    <%
         String sid=request.getParameter("sid");
         String stdudentID=request.getParameter("studentId");   

        
            String studentName=null;
            String department=null;
            String complaintType=null;
            String comment=null;
             String cDate=null;
             
       Connection con=null;
       Statement st=null;
        ResultSet rs=null;
        int i=0;
        String sql = "select * from student_complaints where sid='"+sid+"' and studentId='"+stdudentID+"' " ;
        con=DBconnecton.creatConnection();
        st=con.createStatement();
        rs =st.executeQuery (sql);
        
        while(rs.next ()){
            studentName=rs.getString("studentName");
            department=rs.getString("department");
            complaintType=rs.getString("complaintsType");
            comment=rs.getString("comment");
             cDate=rs.getString("date");
        }
        st.close();
        rs.close();
        con.close();
    

     %>
    
    <div class="container-fluid text-center">    
        <div class="row content">
            
            <%@include file="myHTML/list_of_complaints_category.html" %>
            
            
        
            <div class="col-lg-10 text-left well-lg"> 
                <label class="control-label col-md-2 col-md-offset-1" for="studentName"> To :</label>
                <div class="col-md-8"> 
                    <p><b>User Name :</b> <%=studentName %> </p>
                    <p><b > department : </b> <%=department %> </p>
                <p><b>Complaint Type :</b> <%=complaintType %> </p>
                <p><b>Complaint Description :</b> <%=comment %></p>
                <p><b>Submitted Date of Complaint :</b> <%=cDate %>  </p>
               </div>
              <form class="form-horizontal" method="post" action="Complaints_Reply_Controller">
                    <div>
                  <div class="form-group">
                     <label class="control-label col-md-2" for="studentName"></label>
                    <div class="col-md-6">
                     <input type="text" class="form-control invisible" name="serialId" value="<%=sid%>"> 
                    </div>
                    </div>  
                    
                   <div class="form-group">
                     <label class="control-label col-md-2" for="studentName"> </label>
                    <div class="col-md-6">
                     <input type="text" class="form-control invisible " name="stdudentID" value="<%=stdudentID%>"> 
                    </div>
                    </div> 
                    
                                                  
                <div class="form-group">
                    <label class="control-label col-md-2" for="comment">Reply Message:</label>
                     <div class="col-md-6">
                         <textarea class="form-control"  rows="6" cols="10" name="comment" required=""></textarea>
                   </div>
              </div>
                <div>
               <%
               Date date =new Date();
               String currentDate=date.toString();
               out.print( "<h4  align=\"center\">" +currentDate+"</h4>");
               //request.setAttribute("Date",currentDate );
            %>
               </div>
         <div>
            <div class="col-md-offset-5 col-md-6">
                <button type="submit" class="btn btn-info" name="submit" value="Submit">Submit</button> 
            </div>  
         
        </div>  
           
               
        </div>
       </form>
           
        </div>
    </div> 
 </div>
               
</body>
</html>