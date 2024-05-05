package com.stewie.rest_booker.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stewie.rest_booker.DAO.BasicDAO;
import com.stewie.rest_booker.DAO.User;

@Controller
public class ViewProfileController {
    @Autowired
    User user;

    @Autowired
    BasicDAO basicDao;

    @GetMapping("/profile")
    public ModelAndView profileView(HttpSession session) {
        ModelAndView model = new ModelAndView();
        model.setViewName("profile");

        // Retrieve the user's name and email from the session or database
        String userFirstName = (String) session.getAttribute("userFirstName");
        String userLastName = (String) session.getAttribute("userLastName");
        String userEmail = (String) session.getAttribute("userEmail");

        System.out.println(userFirstName + " " + userLastName + " " + userEmail);

        // Pass the user's name and email to the profile page
        model.addObject("userFirstName", userFirstName);
        model.addObject("userLastName", userLastName);
        model.addObject("userEmail", userEmail);

        return model;
    }
}