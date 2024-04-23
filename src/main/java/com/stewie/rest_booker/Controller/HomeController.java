package com.stewie.rest_booker.Controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = { "/" })
public class HomeController {

    @Autowired
    ServletContext servletContext;

    @GetMapping
    public ModelAndView homeView() {
        ModelAndView model = new ModelAndView();

        model.setViewName("Home");

        return model;
    }

}
