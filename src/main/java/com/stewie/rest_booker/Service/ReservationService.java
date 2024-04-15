package com.stewie.rest_booker.Service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.stewie.rest_booker.DAO.User;
import com.stewie.rest_booker.Model.Reservation;

@Service
public class ReservationService {

    private static User user;
    private static List<Reservation> reservations = new ArrayList<>();

    static {
        reservations.add(new Reservation());
        reservations.add(new Reservation());
    }

    public List<Reservation> getReservations() {
        return reservations;
    }

    public void saveReservation(HttpServletRequest request) {

        Reservation reservation = new Reservation();
        reservation.setFirstName(request.getParameter("firstName"));
        reservation.setLastName(request.getParameter("lastName"));
        reservation.setEmail(request.getParameter("email"));
        reservation.setDate(request.getParameter("date"));
        reservation.setTime(request.getParameter("time"));
        reservations.add(reservation);

    }

    public static void setUser(User user) {
        ReservationService.user = user;
    }

    public static User getUser() {
        return user;
    }
}
