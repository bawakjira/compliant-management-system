package ServeletController;

import java.io.IOException;
import java.sql.*;

import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class Login_Controller extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("userName");
    String Pass = request.getParameter("password");
    String loginType = request.getParameter("login");
    
    Connection connection = null;
    Statement statement = null;
    ResultSet rs = null;
       HttpSession session  = null;
    if (loginType.equals("Admin")) {
      try {
     Class.forName("com.mysql.cj.jdbc.Driver");
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint_management_system", "administrator", "*Barie123#");
        session = request.getSession(true);
        statement = connection.createStatement();
        rs = statement.executeQuery("select * from admin_info where userName='" + name + "' " + "and password='" + Pass + "'");
        if (rs.next()) {
          session.setAttribute("userName", name);
          response.sendRedirect("admin_home_page.jsp");
        } else {
          response.sendRedirect("index.jsp");
        }
      } catch (Exception ex) {
        System.out.println("ServletController.Login_Controller.doPost() error");
      }
    } else if (loginType.equals("Student")) {
      try {
        statement = connection.createStatement();
        rs = statement.executeQuery("select * from student_registration_info where userName='" + name + "' " + "and password='" + Pass + "'");
        if (rs.next()) {
          session.setAttribute("userid", name);
          response.sendRedirect("student_success_log.jsp");
        } else {
          response.sendRedirect("index.jsp");
        }
      } catch (SQLException ex) {
        Logger.getLogger(Login_Controller.class.getName()).log(Level.SEVERE, null, ex);
      }
    }
  }
}