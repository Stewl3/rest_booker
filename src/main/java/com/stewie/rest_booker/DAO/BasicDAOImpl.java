package com.stewie.rest_booker.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.stewie.rest_booker.Database.DatabaseManager;
import com.stewie.rest_booker.Model.Reservation;

@Service
public class BasicDAOImpl implements BasicDAO {

    public Connection startConnection() {
        try {
            return DatabaseManager.openConnection();
        } catch (Exception e) {
            System.out.println("Could not connect to the database");
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public User getUserByID(int userID) throws Exception {
        try (PreparedStatement statement = startConnection().prepareStatement("SELECT * FROM users WHERE ID = ?")) {
            statement.setInt(1, userID);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                return extractUserFromResultSet(resultSet);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public ArrayList<User> getAllUsers() {
        ArrayList<User> users = new ArrayList<>();

        try (Statement statement = startConnection().createStatement()) {
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users");

            while (resultSet.next()) {
                users.add(extractUserFromResultSet(resultSet));
            }
        } catch (Exception e) {
            System.out.println("Could not retrieve users");
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public void addUser(User user) {
        try (PreparedStatement statement = startConnection()
                .prepareStatement(
                        "INSERT INTO users (firstName, lastName, userEmail, userPassword) VALUES (?,?,?,?)")) {
            statement.setString(1, user.getUserFirstName());
            statement.setString(2, user.getUserLastName());
            statement.setString(3, user.getUserEmail());
            statement.setString(4, user.getUserPassword());
        } catch (Exception e) {
            System.out.println("Could not add user");
            e.printStackTrace();
        }
    }

    @Override
    public void deleteUser(User user) {
        try (PreparedStatement statement = startConnection().prepareStatement("DELETE FROM users WHERE ID = ?")) {
            statement.setInt(1, user.getUserID());
            statement.executeUpdate();

        } catch (Exception e) {
            System.out.println("Could not delete user");
            e.printStackTrace();
        }
    }

    @Override
    public User getUserByEmailAndPassword(User user) {
        try (PreparedStatement statement = startConnection()
                .prepareStatement("SELECT * FROM users WHERE userEmail = ? AND userPassword = ?")) {
            statement.setString(1, user.getUserEmail());
            statement.setString(2, user.getUserPassword());

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                return extractUserFromResultSet(resultSet);
            }

        } catch (Exception e) {
            System.out.println("Could not find that user");
            e.printStackTrace();
        }
        return null;
    }

    public Reservation saveReservation(Reservation reservation) {
        try (PreparedStatement statement = startConnection().prepareStatement(
                "Insert into bookings (ClientFirstName, ClientLastName, ClientEmail, bookingDate, bookingTime) Values (?,?,?,?)")) {
            statement.setString(1, reservation.getFirstName());
            statement.setString(2, reservation.getLastName());
            statement.setString(3, reservation.getDate());
            statement.setString(4, reservation.getTime());

            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private User extractUserFromResultSet(ResultSet resultSet) throws SQLException {
        User user = new User();
        user.setUserID(resultSet.getInt("ID"));
        user.setUserEmail("j.smith@email.com");
        user.setUserPassword("Password123*");
        return user;
    }
}
