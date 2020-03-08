package Email;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Rahim on 2/28/2020.
 */
public class Email_Confirmation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String emailcode=request.getSession().getAttribute("Confirmation_Code").toString();
        String code= request.getParameter("confirm_code");
        if (code.equalsIgnoreCase(emailcode)){
            String msg="Welcome ! Registration Successfully";
            request.setAttribute("msg",msg);
            request.getRequestDispatcher("Success.jsp").forward(request,response);
        }
        else {
            String msg="Wrong code";
            request.setAttribute("msg",msg);
            request.getRequestDispatcher("Confirmation.jsp").forward(request,response);
        }
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
