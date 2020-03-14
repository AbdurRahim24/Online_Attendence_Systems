
package controller;

import database.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        
        System.out.println("Username :"+username+" Password :"+pass);
        
        try {
            PreparedStatement ps = DBConnection.getConnection().prepareStatement("Select *from user where username = ? and password = ?");
            ps.setString(1, username);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                Integer id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String mobile = rs.getString("mobile");
                String image = rs.getString("image");
                
                System.err.println("Teachers_id :"+id);
                System.out.println(name+email+username+mobile+image);
                
                HttpSession session = request.getSession();
                session.setAttribute("id",id);
                session.setAttribute("name",name);
                session.setAttribute("username",username);
                session.setAttribute("email",email);
                session.setAttribute("mobile",mobile);
                session.setAttribute("image",image);
                
                request.getRequestDispatcher("home.jsp").forward(request, response);
                
            }
            else{
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


}
