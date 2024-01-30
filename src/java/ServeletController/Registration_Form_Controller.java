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
import model_class.Register;
import model_class.Registration_info;
/**
 *
 * @author ADMIN
 */
public class Registration_Form_Controller extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
       
            String studentId=request.getParameter("studentID");
            String studentName=request.getParameter("studentName");
            String department=request.getParameter("department");
            String section=request.getParameter("section");
            String batch=request.getParameter("batch");
            String email=request.getParameter("email");
            String userName=request.getParameter("UserName");
            String password=request.getParameter("password");
            String position=request.getParameter("position");
          
           
            Registration_info registrationInfo=new Registration_info();
            
            registrationInfo.setStudentName(studentName);
            registrationInfo.setStudentId(studentId);
            registrationInfo.setDepartment(department);
            registrationInfo.setSection(section);
            registrationInfo.setBatch(batch);
            registrationInfo.setEmail(email);
            registrationInfo.setUserName(userName);
            registrationInfo.setPassword(password);
            
            if(position.equals("cr")){
            registrationInfo.setPosition("cr");
             }
            else
            registrationInfo.setPosition("not cr");
            
            
            
            if(department.equals("CSE")){
                registrationInfo.setDepartment("CSE");
            }
            else if(department.equals("EEE")){
                registrationInfo.setDepartment("EEE");
            }
              
              else if(department.equals("CV")){
                registrationInfo.setDepartment("CV");
            }
             else if(department.equals("TE")){
                registrationInfo.setDepartment("TE");
            } else if(department.equals("MIS")){
                registrationInfo.setDepartment("MIS");
            } else if(department.equals("CE")){
                registrationInfo.setDepartment("CE");
            } else if(department.equals("MCT")){
                registrationInfo.setDepartment("MCT");
            } else if(department.equals("NFE")){
                registrationInfo.setDepartment("NFE");
            } else if(department.equals("MBA")){
                registrationInfo.setDepartment("MBA");
            } else if(department.equals("BBA")){
                registrationInfo.setDepartment("BBA");
            }
            else if(department.equals("LLB")){
                registrationInfo.setDepartment("LLB");
            }else if(department.equals("B. Pharm")){
                registrationInfo.setDepartment("B. Pharm");
            }
            
               else
                registrationInfo.setPosition("none");
            

            Register register=new Register();
            
           String registerUser=register.registerUser(registrationInfo);
           
           if(registerUser=="success"){
              response.sendRedirect("index.jsp");
              
          }
          else
              response.sendRedirect("student_registration_form.jsp");
            
        
        
        
        
    }

    }
