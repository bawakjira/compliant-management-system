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
public class student_complaint_controller extends HttpServlet {

   

     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
            String studentId=request.getParameter("studentID");
            String studentName=request.getParameter("studentName");
            String department=request.getParameter("department");
            String complaintType=request.getParameter("complaint");
            String comment=request.getParameter("comment");
            
            Connection connection=null;
            Statement statement=null;
            int i=0;
                try {
            connection=DBconnecton.creatConnection();
            statement=connection.createStatement();
          
             i = statement.executeUpdate("insert into student_complaints(studentId, studentName, department, complaintsType,comment,date) "
                     + "values('"+studentId+"','"+studentName+"','"+department+"','"+complaintType+"','"+comment+"',CURDATE())");
         } catch (SQLException ex) {
             Logger.getLogger(student_complaint_controller.class.getName()).log(Level.SEVERE, null, ex);
         }


if(i>0)                
 response.sendRedirect("student_success_log.jsp");            
else    
     response.sendRedirect("student_success_log.jsp");
}   

         
         
    }
