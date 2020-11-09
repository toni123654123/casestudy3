package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    public static Connection CreateConnection(){
        Connection conn= null;

        String url="jdbc:mysql://localhost:3306/banhang2";
        String username="root";
        String password="cclytn1105..";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url,username,password);
            System.out.println("Connected successfully");
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        catch(SQLException ex){
            ex.printStackTrace();
            System.out.println("Error connection " + ex);
        }

        // create connection
        return conn;
    }
    public static void main(String[] args)
    {
        DBConnect.CreateConnection();
    }
}
