
package controller;

import database.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");
        String image = request.getParameter("image");
        

        System.out.println("Name :"+name+" Username :"+username+" E-mail :"+email+" Mobile :"+mobile+" Password :"+password);
        
        try {
            PreparedStatement ps = DBConnection.getConnection().prepareStatement("Insert into user values(id,?,?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.setString(4, email);
            ps.setString(5, mobile);
            ps.setString(6, image);
            
            int i= ps.executeUpdate();
            if(i>0){
                String successMsg = "Welcome! You are successfully registered..";
                System.out.println(successMsg);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            
        } catch (SQLException ex) {
           String errorMsg = "Sorry! Something went wrong. Please try again.";
                System.out.println(errorMsg);
                request.getRequestDispatcher("signUp.jsp").forward(request, response);
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
            
        } catch (ClassNotFoundException ex) {
            String errorMsg = "Sorry! Something went wrong. Please try again.";
                System.out.println(errorMsg);
                request.getRequestDispatcher("signUp.jsp").forward(request, response);
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

    

}
