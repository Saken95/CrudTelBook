
package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUtils {
    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement ps =  null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:1433;databaseName=CRUD";
        String user = "saken";
        String pass = "root";
        
        Connection con = DriverManager.getConnection(url, user, pass);
        ps = con.prepareStatement(sql);
        
        return ps;
    }
    
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        getPreparedStatement("select * form News");
    }
}
