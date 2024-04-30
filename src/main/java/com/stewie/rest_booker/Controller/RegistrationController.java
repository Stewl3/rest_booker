package com.stewie.rest_booker.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.stewie.rest_booker.DAO.BasicDAO;
import com.stewie.rest_booker.DAO.User;

@Controller
@RequestMapping(value = { "/registration" })
@SessionAttributes("first_name")
public class RegistrationController {

    @Autowired
    User user;

    @Autowired
    BasicDAO dao;

    @GetMapping
    public ModelAndView registrationView() {
        ModelAndView model = new ModelAndView();
        model.setViewName("registration");
        return model;
    }

    @RequestMapping(value = { "/registered" }, method = RequestMethod.POST)
    public ModelAndView registeredUser(
            @RequestParam("first_name") String userFirstName,
            @RequestParam("last_name") String userLastName,
            @RequestParam("email") String userEmail,
            @RequestParam("password") String userPassword) {

        System.out.println("In method");

        ModelAndView model = new ModelAndView();

        model.setViewName("registered");

        user.setUserFirstName(userFirstName);
        user.setUserLastName(userLastName);
        user.setUserEmail(userEmail);
        user.setUserPassword(userPassword);

        dao.addUser(user);

        return model;
    }
}
