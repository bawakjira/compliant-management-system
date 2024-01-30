
<%@page import="java.sql.*"%>
<% 
    if((session.getAttribute("userid")==null)||(session.getAttribute("userid")==""))
    {
  %>      
  you are not logged in please <a href="index.jsp">login here</a>
<% } else {
   String action=request.getParameter("edit");
                if(action.equals("Edit")){

                         String studentId=request.getParameter("studentID");
                         String studentName=request.getParameter("studentName");
                         String dept=request.getParameter("department");
                         String section=request.getParameter("section");
                         String batch=request.getParameter("batch");
                         String email=request.getParameter("email");
                         String userName=request.getParameter("UserName");
                         String password=request.getParameter("password");


                     Class.forName("com.mysql.cj.jdbc.Driver");
                     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint_management_system", "administrator", "*Barie123#");
                     Statement st=con.createStatement();

                     int upd=st.executeUpdate("update student_registration_info set studentId='"+ studentId+"',"
                     + " studentName='"+studentName+"', department='"+dept+"',section='"+section +"',batch='"+ batch+"',"
                     + "email='"+email +"', userName='"+ userName+"', password='"+ password+"' "
                     + "where userName='"+session.getAttribute("userid")+"'");




                   if(upd>0){
                     response.sendRedirect("student_info_edit.jsp");
                     }
                    else {
                           response.sendRedirect("student_success_log.jsp");

                    }


            }

        else{
            response.sendRedirect("userInformation.jsp");

        //out.println("you have no permission to delete this record<a href='editinfo.jsp'>"
       // + " go to edit page</a>");


        }
}
    %>
    