package com.stewie.rest_booker.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stewie.rest_booker.DAO.BasicDAO;
import com.stewie.rest_booker.DAO.User;
import com.stewie.rest_booker.Model.Reservation;

@Controller
public class ViewProfileController {
    @Autowired
    User user;

    @Autowired
    Reservation reservation;

    @Autowired
    BasicDAO basicDao;

    @GetMapping("/profile")
    public ModelAndView profileView() {
        ModelAndView model = new ModelAndView();
        model.setViewName("profile");
        return model;
    }
}