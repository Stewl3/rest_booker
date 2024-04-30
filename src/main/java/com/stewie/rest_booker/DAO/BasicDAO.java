package com.stewie.rest_booker.DAO;

import java.util.ArrayList;

import com.stewie.rest_booker.Model.Reservation;

public interface BasicDAO {
    User getUserByID(int userID) throws Exception;

    ArrayList<User> getAllUsers();

    void addUser(User user);

    void deleteUser(User user);

    User getUserByEmailAndPassword(User user);

    Reservation saveReservation(Reservation reservation);
}