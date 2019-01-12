
import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Apoorva Dabhere
 */
public class sqlConnection {
    public static Connection getConnectionn()
    {
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp","root","secret");
        }
        catch(Exception e){
        
        }
        return con;
    }
}
