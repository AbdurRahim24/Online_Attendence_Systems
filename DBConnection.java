import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by Rahim on 2/28/2020.
 */
public class DBConnection {
    private static Statement stm;
    private static String url="jdbc:mysql://localhost:3306/Online_Attendence";
    private static String username="root";
    private static String password="";
    public static Connection getConnection() throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,username,password);
        stm=con.createStatement();
        return con;
    }
}
