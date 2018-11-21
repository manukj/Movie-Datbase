
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionJDBC {
  
private java.sql.Connection  connection ;
private Statement statment ; 
private String connectionUrl = "jdbc:mysql://localhost:3306/";
private String dbName = "movie";
private String userId = "root";
private String password = "";

public Statement getstatment()
{
    return statment;
}
public ConnectionJDBC()
{
   
}
}
