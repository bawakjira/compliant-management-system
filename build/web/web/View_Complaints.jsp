
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <title> Complaint view  </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  </head>
  
<body>
    <%@include  file="myHTML/adminHomePage.html" %>
    <div class="container-fluid text-center">    
        <div class="row content">
            
                       <%@include file="myHTML/list_of_complaints_category.html" %>
          
                       <div class="text-info"> <h3><b> Complaints List</b> </h3></div>
  <div class="col-lg-10 text-left well-lg">  

      <table class="table">
                <thead>
                  <tr>
                      <th>#</th>
                    <th class="invisible">SID</th>
                    <th>Student Name</th>
                    <th>Department</th>
                    <th>Complaints type</th>
                    <th class="col-xs-4">Comment</th>
                    <th>Date</th>
                  </tr>
                </thead>
            <%Iterator itr;
            int i=0;
             %>
            <% List data= (List)request.getAttribute("data");
              for (itr=data.iterator(); itr.hasNext(); )
            {
               
                i=i+1;
                        
              %>
              

                 <tbody>
              <form class="form-horizontal" method="post" action="Complaints_Reply.jsp">
                 <tr>
                    
                    <td><input type="hidden" value="<%=itr.next() %>" name="sid"><%=i%></td>
                     <td><input type="hidden" value="<%=itr.next() %>" name="studentId"> </td>
                    <td><%=itr.next()%> </td>
                    <td><%=itr.next()%> </td>
                    <td><%=itr.next()%> </td>
                    <td class="span2"><%=itr.next()%> </td>
                    <td><%=itr.next()%> </td>
                    <td>
                                
                      <div class="pull-right ">
                        <div>
                        <button type="submit" class="btn btn-info btn-xs" name="submit" value="submit">Reply</button> 
                        </div> 
                          
                      </div> 
                        
                    </td>
                    
                  </tr>
              </form>
                 </tbody>

                               
            <%}%>

    </table>
            
    
  </div>
     
     </div>    
</div>
    
   

</body>
</html>
