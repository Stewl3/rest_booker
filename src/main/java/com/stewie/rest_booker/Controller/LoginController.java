package com.stewie.rest_booker.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.stewie.rest_booker.Service.LoginService;

@Controller
@RequestMapping(value = { "/login" })
@SessionAttributes("name")
public class LoginController {

    @Autowired
    LoginService service;

    @GetMapping
    public ModelAndView loginView() {
        ModelAndView model = new ModelAndView();
        model.setViewName("login");
        return model;
    }

    @RequestMapping(value = "/database", method = RequestMethod.POST)
    public String showWelcomePage(@RequestParam("name") String name, @RequestParam("password") String password) {
        ModelAndView model = new ModelAndView();
        boolean isValidUser = service.validateUser(name, password);

        if (!isValidUser) {
            model.addObject("errorMessage", "Access Denied, Invalid credentials");
            return "login";
        }

        model.addObject("name", name);
        model.addObject("password", password);

        return "welcome";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout() {
        return "redirect:/login";
    }
}
