package com.stewie.rest_booker.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {

    @GetMapping("/welcome")
    public ModelAndView getWelcomePage() {

        ModelAndView model = new ModelAndView();
        model.setViewName("welcome");
        return model;
    }

}
