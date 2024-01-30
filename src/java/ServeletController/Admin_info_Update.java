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
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model_class.DBconnecton;

/**
 *
 * @author ADMIN
 */
public class Admin_info_Update extends HttpServlet {

   

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name=request.getParameter("adminName");
                 String password=request.getParameter("password");

        Connection con=null;
        Statement st=null;
        con=DBconnecton.creatConnection();
        int upd=0;
       
       String sql = "UPDATE admin_info SET name=?, password=? WHERE sid=1";
 
        PreparedStatement statement = null;
        try {
            statement = con.prepareStatement(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Admin_info_Update.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        try {
            statement.setString(1, name);
           statement.setString(2, password);
        } catch (SQLException ex) {
            Logger.getLogger(Admin_info_Update.class.getName()).log(Level.SEVERE, null, ex);
        }
              

        try {
            upd = statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Admin_info_Update.class.getName()).log(Level.SEVERE, null, ex);
        }

                   if(upd>0){
                     response.sendRedirect("Admin_Info.jsp");
                     }
                    else {
                           response.sendRedirect("admin_home_page.jsp");

                    }
}
  


}
