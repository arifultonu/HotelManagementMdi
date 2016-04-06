/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.*;


/**
 *
 * @author Tonu
 */
public class Database1 {
    public static Statement getStm() {
        Statement stm = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_management", "root", "123");
            stm = con.createStatement();
            return stm;

        } catch (Exception ex) {
            System.out.println("Database.getConnection() Error" + ex.getMessage());
            return null;
        }
    }

    public static void close(Connection con) {
        try {
            con.close();
        } catch  (Exception ex){
        }
    }
}
