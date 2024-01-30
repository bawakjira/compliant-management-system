/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model_class;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class DBconnecton {
    public static Connection creatConnection(){
     Connection connection=null;
     String url="jdbc:mysql://localhost:3306/complaint_management_system";
     String root="administrator";
     String password="*Barie123#";
      try {
         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
          
         } catch (ClassNotFoundException ex) {
             System.out.println("driver class not found");
             Logger.getLogger(DBconnecton.class.getName()).log(Level.SEVERE, null, ex);
         }
      
          connection=DriverManager.getConnection(url,root,password);
          
        } catch (SQLException ex) {
             System.out.println("connection class not found");
            Logger.getLogger(DBconnecton.class.getName()).log(Level.SEVERE, null, ex);
        }
     return connection;
    }
    
}
