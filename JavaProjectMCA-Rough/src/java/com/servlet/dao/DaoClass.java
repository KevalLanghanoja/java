/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.dao;

import java.sql.*;

/**
 *
 * @author hp
 */
public class DaoClass {
    
    public static Connection getConnection() {
        Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/garagego", "root", ""); 
                
            } catch (Exception e) {
                System.out.println("Exception Occured: " + e);
            }
        return con;   
    }
    
    public static boolean authenticateUset(String emailID, String password, String userType) {
        
        try {
            Connection con = getConnection();
            PreparedStatement pst;
            ResultSet rs;
            switch(userType) {
                case "administrator":
                    pst = con.prepareStatement("select * from administrator where email = ? and password = ?");
                    pst.setString(1, emailID);
                    pst.setString(2, password);
                    rs = pst.executeQuery();
                    if(rs.next())
                        return true;
                    break;
                case "mechanic":
                    pst = con.prepareStatement("select * from mechanic where email = ? and password = ?");
                    pst.setString(1, emailID);
                    pst.setString(2, password);
                    rs = pst.executeQuery();
                    if(rs.next())
                        return true;
                    break;
                default:
                    pst = con.prepareStatement("select * from consumer where email = ? and password = ?");
                    pst.setString(1, emailID);
                    pst.setString(2, password);
                    rs = pst.executeQuery();
                    if(rs.next())
                        return true;
                    break;
            }
            

        } catch (Exception e) {
        }
        
        return false;
    }
}
