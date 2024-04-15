package com.stewie.rest_booker.Database;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.stereotype.Component;

@Component
public class DatabaseManager {

    private static String url = "jdbc:mysql://localhost:3306/senior_project";
    private static String username = "root";
    private static String password = "root";
    private static Connection conn;

    public static Connection openConnection() throws Exception {
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            System.out.println("Connection Failed");
            e.printStackTrace();
        }
        return conn;
    }

    public static Connection closeConnection() throws Exception {
        try {
            conn.close();
        } catch (Exception e) {
            System.out.println("Couldn't close the connection");
            e.printStackTrace();
        }
        return conn;
    }
}
