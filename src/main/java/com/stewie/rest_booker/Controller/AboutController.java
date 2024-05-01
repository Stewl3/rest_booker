package com.stewie.rest_booker.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutController {

    @GetMapping("/about")
    public ModelAndView aboutView() {
        ModelAndView model = new ModelAndView();
        model.setViewName("about");
        return model;
    }

}
