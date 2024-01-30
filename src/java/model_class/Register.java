/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model_class;

import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author ADMIN
 */
public class Register {
    
    public String registerUser(Registration_info registrationInfo){
        String studentId=registrationInfo.getStudentId();
        String studentName=registrationInfo.getStudentName();
        String section=registrationInfo.getSection();
        String batch=registrationInfo.getBatch();
        String email=registrationInfo.getEmail();
        String userName=registrationInfo.getUserName();
        String password=registrationInfo.getPassword();
        String position=registrationInfo.getPosition();
        String department=registrationInfo.getDepartment();
                
        Connection connection=null;
        Statement statement=null;
        int count=0;
        try {
            
            connection=DBconnecton.creatConnection();
            statement=connection.createStatement();
          
            count=statement.executeUpdate("insert into student_registration_info(studentID, studentName, department, section, batch, email, userName, password, postion) "
                    + "values('"+studentId+"','"+studentName+"','"+department+"','"+section+"','"+batch+"','"+ email+"','"+userName+"','"+password+"','"+position+"')");

        if(count!=0)
        return "success";
        
            
        } catch (Exception e) {
           System.out.print("database problem");
        }
        return "something wrong there" ;
        
        
        
        
}

}
