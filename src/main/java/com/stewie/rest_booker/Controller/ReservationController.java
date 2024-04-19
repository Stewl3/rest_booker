package com.stewie.rest_booker.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.stewie.rest_booker.DAO.BasicDAO;
import com.stewie.rest_booker.Model.Reservation;

@Controller
@RequestMapping(value = { "/user/reservation" })
public class ReservationController {

    @Autowired
    BasicDAO dao;

    @GetMapping
    public ModelAndView reservationView() {
        ModelAndView model = new ModelAndView();
        model.setViewName("reservation");
        return model;
    }

    @RequestMapping(value = { "/success" }, method = RequestMethod.GET)
    public ModelAndView ReservationView(

            @RequestParam("firstName") String firstName,
            @RequestParam("lastName") String lastName,
            @RequestParam("email") String email,
            @RequestParam("date") String date,
            @RequestParam("time") String time) {

        ModelAndView model = new ModelAndView();
        model.setViewName("success");

        Reservation reservation = new Reservation();
        reservation.setFirstName(firstName);
        reservation.setLastName(lastName);
        reservation.setEmail(email);
        reservation.setDate(date);
        reservation.setTime(time);

        dao.saveReservation(reservation);
        System.out.println("reservation saved to db");
        return model;
    }
}
