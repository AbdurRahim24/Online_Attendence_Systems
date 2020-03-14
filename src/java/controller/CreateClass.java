/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet(name = "CreateClass", urlPatterns = {"/CreateClass"})
public class CreateClass extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String id =(String) session.getAttribute("id");
        int teachers_id = Integer.parseInt(id);
        String courseName = request.getParameter("courseName");
        String courseCode = request.getParameter("courseCode");
        
        System.out.println("Teachers_id"+teachers_id+"Course name : "+courseName+" Course Code : "+courseCode);
        
        int classCode = (int) (100000 + Math.random() * 85870);

        System.out.println("Code : "+classCode);
        
        try {
            PreparedStatement ps = DBConnection.getConnection().prepareStatement("Insert into course_table values(id,?,?,?,?)");
            ps.setString(1, courseName);
            ps.setString(2, courseCode);
            ps.setInt(3, classCode);
            ps.setInt(4, teachers_id);
            int i= ps.executeUpdate();
            if(i>0){
                String successMsg = "Class successfullu created";
                System.out.println(successMsg);
            }
            else{
                String errorMsg = "Sorry ! something went wrong";
                System.out.println(errorMsg);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(CreateClass.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CreateClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

    

}
