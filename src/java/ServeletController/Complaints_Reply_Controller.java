/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ServeletController;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model_class.DBconnecton;

/**
 *
 * @author ADMIN
 */
public class Complaints_Reply_Controller extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String sId=request.getParameter("serialId");
            String reply=request.getParameter("comment");
            String studentID=request.getParameter("stdudentID");
 
            Connection connection=null;
            Statement statement=null;
            int i=0;
                try {
            connection=DBconnecton.creatConnection();
            statement=connection.createStatement();
          
             i = statement.executeUpdate("insert into reply_complaints(sid, studentID, reply, replydate) "
                     + "values('"+sId+"','"+studentID+"','"+reply+"',CURDATE())");
         } catch (SQLException ex) {
             Logger.getLogger(student_complaint_controller.class.getName()).log(Level.SEVERE, null, ex);
         }


if(i>0)                
 response.sendRedirect("Admin_Complaints_Controller");            
else    
     response.sendRedirect("admin_home_page.jsp");
}   
 }